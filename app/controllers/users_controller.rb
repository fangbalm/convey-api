class UsersController < ApplicationController
    before_action :authenticate, only: [:show]
    skip_before_action :verify_authenticity_token

    def login 
      user = User.first 
      render json: user
    end

    # def show
    #   render json: @current_user
    # end
end
