class SessionsController < ApplicationController
  CALLBACK_URL = "http://localhost:3000/session/callback"

  def connect
    redirect_to Instagram.authorize_url(:redirect_uri => CALLBACK_URL)
  end

  def callback
    response = Instagram.get_access_token(params[:code], :redirect_uri => CALLBACK_URL)
    session[:access_token] = response.access_token
    redirect_to :controller => 'welcome', :action => 'index'
  end
end