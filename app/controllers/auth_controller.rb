class AuthController < ApplicationController
  def login
    ## check if the user exists by searching email
    user = User.find_by(email: auth_params[:email])
    ## if there is, authenticate the password
    ## ('authenticate' comes from has_secure_password method)
    ## shorthand syntax instead of user && user.authenticate
    if user&.authenticate(auth_params[:password])
      ## what to include in JWT token
      payload = { user_id: user.id, exp: 1.hour.from_now.to_i }
      token = JWT.encode(payload, Rails.application.credentials.dig(:secret_key_base))
      render json: { jwt: token, username: user.username }
    else
      render json: { error: "Incorrect email or password." }, status: 422
    end
  end

  def register
    user = User.create(auth_params)
    unless user.errors.any?
      payload = { user_id: user.id, exp: 1.hour.from_now.to_i }
      token = JWT.encode(payload, Rails.application.credentials.dig(:secret_key_base))
      render json: { jwt: token, username: user.username }, status: 201
    else
      render json: { errors: user.errors.full_messages }, status: 422
    end
  end

  private

  def auth_params
    params.require(:auth).permit(:email, :password, :password_confirmation, :username)
  end
end
