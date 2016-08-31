module Api
  class CredentialsController  < BaseController

    before_action :doorkeeper_authorize!
    respond_to :json

    def me
      # respond_with current_resource_owner
      # respond_with User.first
      render json: { user:  current_resource_owner  }
    end
  end
end
