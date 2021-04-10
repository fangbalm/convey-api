class ApplicationController < ActionController::Base
    def authenticate
        @current_user = User.first
      end

      
end
