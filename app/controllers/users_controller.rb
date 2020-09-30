class UsersController < ApplicationController
    skip_before_action :authorized, only: [:register, :login, :index]

    def index
        users= User.all
        # render json: {user: UserSerializer.new(users) }, status: :ok
        render json: users, status: :ok
    end


    def profile
        render json: {user: UserSerializer.new(current_user) }, status: :ok
    end

    def login
        user = User.find_by(email: user_params[:email])
        #  byebug
        if user &&  user.authenticate(user_params[:password])
            token= encode_token(user_id: user.id)
            hero_sprite = user.hero ? HeroSerializer.new(user.hero) : nil
             
            chosen_hero = user.chosen_hero ? ChosenHeroSerializer.new(user.chosen_hero) : nil
             render json: {user: UserSerializer.new(user) , jwt: token, sprite: hero_sprite, chosen_hero: chosen_hero}, status: :ok
        else
            render json: {error: "User/password combination does not exist, Please Try Again"} , status: :unauthorized

        end
    end

    def register
        user= User.registerUser(user_params)
        if user.valid?
            token= encode_token(user_id: user.id)
            render json: {user:UserSerializer.new(user), jwt: token, sprite: nil, chosen_hero: nil}, status: :created
        else
            render json: {error: "Could not Register Account, Please Try Again or Use Different Credentials"}, status: :ok
        end
    end





    private
    def user_params
        params.require(:user).permit(:name,:email,:password,:current_device,:current_playlist_id)
    end

end
