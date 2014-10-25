module Devcon
  module Summit
    class API < Grape::API
      version 'v1', using: :path
      format :json

      helpers do
        def warden
          env['warden']
        end

        def authenticated?
          if warden.authenticated?
            return true
          elsif params[:authentication_token] && current_user
            return true
          else
            error!(status_code: 401, message: 'You must be authenticated to do this action.')
          end
        end

        def current_user
          warden.user || User.where(authentication_token: params[:authentication_token]).first
        end
      end

      resources :users do
        desc 'Return the authentication token of a newly created user'
        params do
          requires :email, type: String, desc: 'Email Address'
          requires :password, type: String, desc: 'Password'
        end
        post do
          user = User.new(email: params[:email], password: params[:password], password_confirmation: params[:password])
          if user.save
            present :status_code, 200
            present :authentication_token, user.authentication_token
            present :message, 'Successfully created a user'
          else
            error!(status_code: 400, message: 'Failed to create user')
          end
        end
      end

      resources :tokens do
        desc 'Return an authentication token'
        params do
          requires :email, type: String, desc: 'Email Address'
          requires :password, type: String, desc: 'Password'
        end
        post do
          user = User.where(email: params[:email]).first
          if user && user.valid_password?(params[:password])
            user.ensure_authentication_token

            present :status_code, 200
            present :message, 'Successfully authenticated!'
            present :authentication_token, user.authentication_token
          else
            error!(status_code: 400, message: 'Email or Password is incorrect.')
          end
        end

        desc 'Delete an authentication token'
        params do
          requires :authentication_token, type: String, desc: 'Authentication Token'
        end
        delete do
          user = User.where(authentication_token: params[:authentication_token]).first
          if user && user.update_attribute(:authentication_token, nil)
            present :status_code, 200
            present :message, 'Successfully deleted the authentication token'
          else
            error!(status_code: 400, message: 'Authentication token is not associated with any user')
          end
        end
      end

      resources :programs do
        desc 'Return the list of all programs'
        post do
          authenticated?
          present :programs, Program.all.map{|program| ProgramSerializer.new(program)}
          present :status_code, 200
        end
      end

      resources :speakers do
        desc 'Return the list of all speakers'
        post do
          authenticated?
          present :speakers, Speaker.all.map{|speaker| SpeakerSerializer.new(speaker)}
          present :status_code, 200
        end
      end

      resources :sponsors do
        desc 'Return the list of all sponsors'
        post do
          authenticated?
          present :sponsors, Sponsor.all.map{|sponsor| SponsorSerializer.new(sponsor)}
          present :status_code, 200
        end
      end

      resource :profile do
        desc 'Return profile information'
        post do
          authenticated?
          present :profile, UserSerializer.new(current_user)
          present :status_code, 200
        end

        desc 'Update profile information'
        put do
          authenticated?
          if current_user.update(
                position: params[:position],
                company: params[:company],
                location: params[:location],
                description: params[:description],
                website: params[:website],
                facebook_url: params[:facebook_url],
                twitter_handle: params[:twitter_handle],
                primary_technology: Technology.where(slug: params[:primary_technology]).first,
                technologies: Technology.where('slug IN (?)', params[:technologies].split(','))
              )
            present :profile, UserSerializer.new(current_user)
            present :status_code, 200
          else
            error!(status_code: 400, message: 'Failed to update profile')
          end
        end
      end

      resources :attendees do
        desc 'Return all attendees'
        post do
          authenticated?
          present :attendees, User.all.map{|user| UserSerializer.new(user)}
          present :status_code, 200
        end
      end

      resources :technologies do
        desc 'Return all technologies'
        get do
          present :technologies, Technology.all.map{|technology| TechnologySerializer.new(technology)}
          present :status_code, 200
        end
      end

      resources :news do
        desc 'Return all news'
        get do
          present :news, News.all.map{|news| NewsSerializer.new(news)}
        end
      end
    end
  end
end
