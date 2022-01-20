class CommentsController < ApplicationController
    def create
        tweet = Tweeet.find(params[:tweeet_id])
        commenting = tweet.comments.build(comment_params)
        commenting.user = current_user
        commenting.save
        redirect_to tweeet_path(tweet), notice: 'successfully commented'
    end

    private
    def comment_params
        params.require(:comment).permit(:body)
    end
    
    
end
