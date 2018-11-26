class UsersController < ApplicationController
    def all_users
        @users = User.all
    end

    def follow
        @followed = User.find(params[:id])
        if @followed == current_user
            flash[:error] = "You cannot follow yourself!"
            redirect_to posts_path
        else
            flash[:success] = "You have successfully followed #{@followed.name}" 
            Follow.create(follower: current_user, followed: @followed)
            redirect_to posts_path
        end
    end

    def dashboard
        @workspace = Workspace.new(workspace_params)
        @workspace.user_id = current_user.id
    
        respond_to do |format|
            if @workspace.save
                format.html { 
                    flash[:success] = 'This post was successfull added to your Dashboard'
                    redirect_to #dashboard_path
                }
                format.json { render :show, status: :created, location: @workspace }
            else
                format.html { render :new }
                format.json { render json: @workspace.errors, status: :unprocessable_entity }
            end
        end
    end

    def all_followers
        @followships = User.find(params[:id]).follow_me
    end

    def workspace_params
        params.require(:workspace).permit(:caption, :link, :user_id)
    end
end