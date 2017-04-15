module ::Api
  class UsersToDestinationController < ApplicationController

    def index
      @users_with_profile = [User.last]
    end

  end
end
