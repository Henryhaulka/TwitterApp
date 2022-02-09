class CommentsController < ApplicationController
    def create
        tweet = Tweeet.find(params[:tweeet_id])
        commenting = tweet.comments.build(comment_params)
        commenting.user = current_user
        commenting.save
        redirect_to tweeet_path(tweet), notice: 'successfully commented'
    end

    

    def destroy
        tweet_comment = params[:twit]
        delete_comment = current_user.comments.find_by(tweeet_id: tweet_comment)
        delete_comment.destroy
        tweet = Tweeet.find(params[:twit])
        redirect_to tweeet_path(tweet), alert: 'Comment deleted successfully'

    end
    

    private
    def comment_params
        params.require(:comment).permit(:body)
    end
    
    
end
