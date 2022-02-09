class SubCommentsController < ApplicationController
    def create
        tweet = Tweeet.find(params[:tweeet_id])
        sub = SubComment.create(sub_params)
        sub.user = current_user
        sub.save
        redirect_to tweeet_path(tweet), notice: "Reply sent"
    end

    # def destroy
    #     # tweet = Tweeet.find(params[:tweeet_id])
    #     comment = params[:com]
    #     sub = current_user.sub_comments.(comment_id: comment)
    #     sub.destroy
    #     redirect_to root_path, alert: "Reply Deleted"
    # end
    
    

    private
    def sub_params
        params.require(:sub_comment).permit(:body, :comment_id)
    end
end

