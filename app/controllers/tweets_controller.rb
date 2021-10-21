class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all(DESC)
end
