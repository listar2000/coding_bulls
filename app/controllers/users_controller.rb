class UsersController < ApplicationController
    def all_users
        @users = User.all
        @users = @users.find(params[:followed]).follow_me.map {|x| x.follower } if params[:followed].present?
        @users = @users.find(params[:follower]).me_follow.map {|x| x.followed } if params[:follower].present?
        @users = Kaminari.paginate_array(@users).page(params[:page]).per(10)
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

    def unfollow
        @follow = Follow.find_by(followed_id: params[:id], follower_id: current_user.id)
        @follow.destroy
        flash[:danger] = "You have unfollowed #{User.find(params[:id]).name}"
        redirect_to request.referer
    end

    def unadds
        @add = Add.find_by(post_id: params[:id])
        @add.destroy
        flash[:danger] = "You have removed #{Post.find(params[:id]).caption} from your Dashboard"
        redirect_to request.referer
    end
end