class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def create
        # render json: params
        user = User.new(user_params)
        # replace the `user_attributes_here` with the actual attribute keys
        if user.save
            render json:user
        else
            render json: user.errors.full_messages, status: unprocessable_entity
        end
    end

    def show
        # render json: params
        @user = User.find(params[:id])
        render json: @user
    end


    def update
        # debugger
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to user_url(@user)
        else
            render json: @user.errors.full_messages, status: unprocessable_entity
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to "/users"
    end


    private
    def user_params
        params.require(:user).permit(:id, :username)
    end
end