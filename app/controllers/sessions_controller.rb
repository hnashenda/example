class SessionsController < ApplicationController
 def create
    auth_hash = request.env['omniauth.auth']

    render :text => auth_hash.inspect
  end
  def new
  end

  def failure
  end
end