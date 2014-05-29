class TweetController < ApplicationController

before_action :authenticate_user!

  def index
  end

  def show
  end

  def new
    @tweet_item = Tweet.all
  end

  def create
    @tweet_item = Tweet.new(sec_params)

    @tweet_item.save
    redirect_to new_tweet_path
  end

  def destroy
    @tweet_item = Tweet.find(params[:id])

    @tweet_item.destroy
    redirect_to new_tweet_path
  end

  private
    def sec_params
      params.require(:tweet).permit(:msg)
    end

end
