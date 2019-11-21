class ApplicationController < ActionController::API

  AUTH_SECRET = ENV["AUTH_SECRET"]

  def get_auth_header
    request.headers["Authorization"]
  end

  def decoded_token
    begin
      JWT.decode(get_auth_header, AUTH_SECRET)[0]
    rescue
      nil
    end
  end

  


end
