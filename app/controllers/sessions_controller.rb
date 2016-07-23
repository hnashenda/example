class SessionsController < ApplicationController
  def new
  end

  def create
  auth_hash = request.env['omniauth.auth']
   @shop_session = request.env['omniauth.auth'].uid
    @token = request.env['omniauth.auth']['credentials']['token']
    @session =ShopifyAPI::Session.new("skillshare-2.myshopify.com", @token)
  #render :text => auth_hash.inspect



  end

  def failure
  end

end

