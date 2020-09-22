class ChosenHerosController < ApplicationController
    skip_before_action :authorized, only: :show
    def index
        chosenhero= ChosenHero.all
        render json: chosenhero, status: :ok
    end

    def show
        hero = ChosenHero.find(params[:id])
        render json: hero.as_json.merge(hero: hero.hero,image: url_for(hero.hero.sprite))
        
    end

    def hire
        chosen_hero = ChosenHero.hire(user: current_user, params: chosen_hero_params)
    end



    private

    def chosen_hero_params
        params.require(:chosen_hero).permit(:name,:reputation,:spotify,:method)
    end





end
