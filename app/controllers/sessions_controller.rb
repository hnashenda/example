class SessionsController < ApplicationController
  def create
    # get the omniauth request
   render text: request.env['omniauth.auth'].to_yaml
    auth = request.env["omniauth.auth"]
  end

end