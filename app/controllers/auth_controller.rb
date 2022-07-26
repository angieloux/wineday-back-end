class AuthController < ApplicationController
  def login
    user = User.login(auth_params[:login]).first
    ## if there is a user with the email/username entered, authenticate the password
    ## ('authenticate' comes from has_secure_password method)
    ## shorthand syntax instead of user && user.authenticate
    if user&.authenticate(auth_params[:password])
      ## what to include in JWT token
      token = JwtService.encode(user)
      render json: { jwt: token, username: user.username, id: user.id }
    else
      render json: { error: "Incorrect email or password." }, status: 422
    end
  end

  def register
    user = User.create(auth_params)
    unless user.errors.any?
      token = JwtService.encode(user)
      render json: { jwt: token, username: user.username, id: user.id }, status: 201
    else
      render json: { errors: user.errors.full_messages }, status: 422
    end
  end

  def logged_in_user
    payload = JwtService.decode(auth_params[:jwt])
    user = User.find(payload['user_id'])
    render json: {username: user.username, id: user.id}    
    p current_user
  end

  private

  def auth_params
    params.require(:auth).permit(:auth, :email, :login, :password, :password_confirmation, :username, :jwt, :id)
  end
end
