class ApplicationController < ActionController::API

  AUTH_SECRET = ENV["AUTH_SECRET"]

  def get_auth_header
    request.headers["Authorization"]
  end

  def decoded_token
    JWT.decode(get_auth_header, AUTH_SECRET)[0]
  end

  # def session_user
  #   # not sure if this will provide the functionality I need
  # end


end
