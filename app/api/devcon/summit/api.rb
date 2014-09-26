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
    end
  end
end
