module ::Api
  class UsersToDestinationController < ApplicationController
    before_action :require_api_token # Should be defined in Api base controller

    def index
      @users = ::FindUsersForDestinationService.call(destination_id_params)
    end

    private

    def destination_id_params
      params.require(:destination_id)
    end

    # We only have a get in the test
    def require_api_token
    end

  end
end
