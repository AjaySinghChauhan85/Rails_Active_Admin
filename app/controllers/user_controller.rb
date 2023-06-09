class UserController < ApplicationController

    def new
      @user=User.new
    end

    def create
        @user=User.new(user_params)
        if @user.save
         render json: @user, status: 200
        else
         render json:@user, status: 404
        end
    end


    private

    def user_params
    params.require(:user).permit(:email, :password)
    end
end
