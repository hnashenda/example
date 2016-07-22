class SessionsController < ApplicationController
  def new
  end

  def create
  auth_hash = request.env['omniauth.auth']
   shop_session = request.env['omniauth.auth'].uid
  #render :text => auth_hash.inspect



  end

  def failure
  end

end

