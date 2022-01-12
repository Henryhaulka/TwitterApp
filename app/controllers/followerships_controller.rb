class FollowershipsController < ApplicationController
    def create
        user = params[:user]
        follow = current_user.followings.build(receiver_id: user)
        follow.save
        @user = User.find(user)
        redirect_to root_path, notice: "You are now following #{@user.name}"
    end
    
    def destroy
        user = params[:user]
        following = current_user.followings.find_by(receiver_id: user)
        following.destroy
        @user = User.find(user)
        redirect_to root_path, notice: "You have successfully unfollowed #{@user.name}"
    end
    
    
end
