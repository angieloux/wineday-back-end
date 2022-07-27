class AuthController < ApplicationController
  def login
    user = User.login(auth_params[:login]).first
    ## if there is a user with the email/username entered, authenticate the password
    ## ('authenticate' comes from has_secure_password method)
    ## shorthand syntax instead of user && user.authenticate
    if user&.authenticate(auth_params[:password])
      ## what to include in JWT token
      token = JwtService.encode(user)
      render json: { jwt: token, username: user.username }
    else
      render json: { error: "Incorrect email or password." }, status: 422
    end
  end

  def register
    user = User.create(auth_params)
    unless user.errors.any?
      token = JwtService.encode(user)
      render json: { jwt: token, username: user.username }, status: 201
    else
      render json: { errors: user.errors.full_messages }, status: 422
    end
  end

  private

  def auth_params
    params.require(:auth).permit(:email, :login, :password, :password_confirmation, :username)
  end
end
