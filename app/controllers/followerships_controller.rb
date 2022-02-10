class FollowershipsController < ApplicationController
    def index
        @followers = current_user.followers
        @followings = current_user.followings
    end
    
    def create
        user = params[:user]
        follow = current_user.followings.build(receiver_id: user)
        follow.save
        @user = User.find(user)
        redirect_to user_path(@user), notice: "You are now following #{@user.name}"
    end
    
    def destroy
        user = params[:user]
        following = current_user.followings.find_by(receiver_id: user)
        following.destroy
        @user = User.find(user)
        redirect_to root_path, alert: "You have successfully unfollowed #{@user.name}"
    end
    
    
end
