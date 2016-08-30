module Api
  class CredentialsController  < BaseController

    before_action :doorkeeper_authorize!

    def me
      respond_with current_resource_owner
    end
  end
end
