class LikesController < ApplicationController
    def create
        tweetted = params[:tweet]
        liking = current_user.likes.build(tweeet_id: tweetted)
        liking.save
        redirect_to root_path, notice: 'successfully liked'
    end

    def destroy
        tweetted = params[:tweet]
        @liked = Like.find_by(user_id: current_user.id, tweeet_id:  tweetted)
        redirect_to root_path, alert: 'successfully unliked'if  @liked.destroy
    end
    
    
end
