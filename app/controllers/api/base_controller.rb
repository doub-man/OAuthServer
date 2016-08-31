module Api
  class BaseController < ::ApplicationController
    protect_from_forgery with: :null_session
    before_action :current_resource_owner

    private
    def current_resource_owner
      @current_resource_owner ||= User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
    end
  end

end
