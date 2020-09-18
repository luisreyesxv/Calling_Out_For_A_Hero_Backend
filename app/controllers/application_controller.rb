class ApplicationController < ActionController::API
    before_action :authorized

    def encode_token(payload) 
      
      JWT.encode(payload, Rails.application.credentials.jwt_api[:secret], "HS256", {typ: "JWT"}) #issue a token, store payload in token
    end
  
    def auth_header
      request.headers['Authorization'] # Bearer <token>
    end
  
    def decoded_token
      if auth_header()
        token = auth_header.split(' ')[0] #need to find out why they say split(' ')[1]
        
        begin
          JWT.decode(token, Rails.application.credentials.jwt_api[:secret], true, algorithm: "HS256")
          # JWT.decode => [{ "user_id"=>"2" }, { "alg"=>"HS256" }]
        rescue JWT::DecodeError
          nil
        end
      end
    end
  
    def current_user
      if decoded_token()
        user_id = decoded_token[0]['user_id'] #[{ "user_id"=>"2" }, { "alg"=>"HS256" }]
        # byebug
        @user = User.find(user_id)
        # byebug
      else
        nil
      end
    end
  
    def logged_in?
      !!current_user
    end
  
    def authorized
      render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end


end
