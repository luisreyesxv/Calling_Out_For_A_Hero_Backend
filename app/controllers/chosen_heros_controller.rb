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
end
