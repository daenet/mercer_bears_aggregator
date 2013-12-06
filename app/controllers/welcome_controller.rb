class WelcomeController < ApplicationController
  def index
    #redirect_to :controller => 'sessions', :action => 'connect' if !session[:access_token]
    @tweets = Tweet.retrieve
    @instagrams = Gram.retrieve
    #@facebooks = Facebook.retrieve
    #@news = News.retrieve
    #@youtube = YouTube.retrieve
  end
end
