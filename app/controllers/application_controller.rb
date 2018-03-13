class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

# def authenticate_token
#     authenticate_or_request_with_http_token do |token, options|
#         @user = JWT.decode(token, nil, false)
#       end
#   end
end
