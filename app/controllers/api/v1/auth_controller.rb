class Api::V1::AuthController < ApplicationController

  def adopter_login
    # byebug
    adopter = Adopter.find_by(username: params[:adopter][:username])

    if adopter && adopter.authenticate(params[:adopter][:password]) 
      token = JWT.encode({adopter_id: adopter.id}, AUTH_SECRET)
      render json: {adopter: adopter, token: token}, status: :created
    else 
      render json: {errors: "Log in failed"}, status: :unauthorized
    end
  end

  def admin_login
    admin = Admin.find_by(username: params[:admin][:username])

    if admin && admin.authenticate(params[:admin][:password]) 
      token = JWT.encode({admin_id: admin.id, admin: true}, AUTH_SECRET)
      render json: {admin: admin, token: token}, status: :created
    else 
      render json: {errors: "Log in failed"}, status: :unauthorized
    end
  end

  def auto_login 
    admin = decoded_token["admin_id"]

    if admin
      admin = Admin.find_by(id: admin)
      render json: {admin: admin}
    else
      adopter_id = decoded_token["adopter_id"]
      adopter = Adopter.find_by(id: adopter_id)
      render json: adopter
    end

  end

# # fixed the auto_login to only have one method, so these are deprecated
  # def auto_login_admin
  #   # byebug
  #   admin_id = JWT.decode(get_auth_header, AUTH_SECRET)[0]["admin_id"]
  #   admin = Admin.find_by(id: admin_id)

  #   render json: admin
  # end

  # def auto_login_adopter
  #   adopter_id = JWT.decode(get_auth_header, AUTH_SECRET)[0]["adopter_id"]
  #   adopter = Adopter.find_by(id: adopter_id)

  #   render json: adopter
  # end

end
