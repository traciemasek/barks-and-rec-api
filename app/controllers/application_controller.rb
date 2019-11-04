class ApplicationController < ActionController::API

  AUTH_SECRET = ENV["AUTH_SECRET"]

  # def encode_token(id)
  #   # this won't work for me since I need to encode the token differently for admins and adopters
  # end

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

  # def session_user
  #   # not sure if this will provide the functionality I need
  # end


end
