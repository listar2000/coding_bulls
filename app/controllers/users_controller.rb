class UsersController < ApplicationController
    def all_users
        @users = User.all
        redirect_to 
    end

    def follow
        @followed = User.find(params[:id])
        if @followed == current_user
            flash[:error] = "You cannot follow yourself!"
            redirect_to posts_path
        else
            Follow.create(follower: current_user, followed: @followed)
            redirect_to posts_path
        end
    end
end