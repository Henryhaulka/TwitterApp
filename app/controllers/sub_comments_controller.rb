class SubCommentsController < ApplicationController
    def create
        tweet = Tweeet.find(params[:tweeet_id])
        comm = Comment.find_by(tweeet_id: tweet)
        sub = SubComment.create(sub_params)
        sub.user = current_user
        sub.comment = comm
        sub.save
        redirect_to tweeet_path(tweet), notice: "You have replied a comment by #{comm.user.username}"
    end
    

    private
    def sub_params
        params.require(:sub_comment).permit(:body)
    end
end
