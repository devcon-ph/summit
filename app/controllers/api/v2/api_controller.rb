module Api
  module V2
    class ApiController < ActionController::Base
      private
        def current_resource_owner
          User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
        end
    end
  end
end
