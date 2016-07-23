class SessionsController < ApplicationController
  def new
  end

  def create
  auth_hash = request.env['omniauth.auth']
   @shop_session = request.env['omniauth.auth'].uid
    @token = request.env['omniauth.auth']['credentials']['token']
    @session =ShopifyAPI::Session.new(@shop_session, @token)
    ShopifyAPI::Base.activate_session(@session)
    @shop = ShopifyAPI::Shop.current
  #render :text => auth_hash.inspect



  end

  def failure
  end

end

