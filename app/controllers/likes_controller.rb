class LikesController < ApplicationController
    def create
        tweetted = params[:tweet]
        liking = current_user.likes.build(tweeet_id: tweetted)
        liking.save
        redirect_to root_path, notice: 'successfully liked a tweet'
    end

    def destroy
        tweetted = params[:tweet]
        liked =  current_user.likes.find_by(tweeet_id:   tweetted)
        liked.destroy
        redirect_to root_path, alert: 'successfully unliked a tweet'
    end  
end
