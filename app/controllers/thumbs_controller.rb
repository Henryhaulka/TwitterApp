class ThumbsController < ApplicationController
  def create
    tweet = params[:tweet]
    comment = params[:com]
    thumb = current_user.thumbs.create!(tweeet_id: tweet, comment_id: comment)
    twit = Tweeet.find(params[:tweet])
    redirect_to tweeet_path(twit), notice: 'comment liked' if thumb.save
  end

  def destroy
    tweet = params[:tweet]
    comment = params[:com]
    thumb = current_user.thumbs.find_by(comment_id: comment, tweeet_id: tweet)
    thumb.destroy
    twit = Tweeet.find(params[:tweet])
    redirect_to tweeet_path(twit), alert: 'like cancelled'
  end
end
