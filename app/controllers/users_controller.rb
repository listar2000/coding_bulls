class UsersController < ApplicationController
    def all_users
        @users = User.all
    end

    def follow
        @followed = User.find(params[:id])
        if @followed == current_user
            flash[:error] = "You cannot follow yourself!"
            # request.referer is the previous page -> where the request is called on
            redirect_to request.referer
        else
            flash[:success] = "You have successfully followed #{@followed.name}" 
            Follow.create(follower: current_user, followed: @followed)
            redirect_to request.referer
        end
    end

    def all_followers
        @followships = User.find(params[:id]).follow_me
    end
end