class ApplicationController < ActionController::API
  def authenticate
    # will return nil or the Authorization header
    token = extract_token_from_auth_headers
    payload = JwtService.decode(token)

    if payload
      @current_user ||= User.find(payload["user_id"])
    else
      # either its expired or doesn't exist
      render json: { error: "You must be logged in" }, status: 401
    end
  end

  def current_user
    @current_user
  end

  def logged_in?
    !!@current_user
  end

  def extract_token_from_auth_headers
    # If there is an Authorization header, split it and get the 2nd item
    request.headers["Authorization"] && request.headers["Authorization"].split(" ")[1]
  end
end
