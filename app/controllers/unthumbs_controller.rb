class UnthumbsController < ApplicationController
  def create
    comment = params[:com]
    twit = params[:tweet]
    unthumb = current_user.unthumbs.build(tweeet_id: twit, comment_id: comment)
    tweet = Tweeet.find(params[:tweet])
    redirect_to tweeet_path(tweet), alert: 'You disliked a comment ' if unthumb.save
  end

  def destroy
    tweet = params[:tweet]
    comment = params[:com]
    thumb = current_user.unthumbs.find_by(comment_id: comment, tweeet_id: tweet)
    thumb.destroy
    twit = Tweeet.find(params[:tweet])
    redirect_to tweeet_path(twit), notice: 'Dislike wiithdrawn'
  end
end
