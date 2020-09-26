class ChosenHerosController < ApplicationController
    skip_before_action :authorized, only: :index
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
        render json: { sprite:  {url: url_for(chosen_hero.hero.sprite), width: chosen_hero.hero.width, height: chosen_hero.hero.height}, chosen_hero: ChosenHeroSerializer.new(chosen_hero)}, status: :created
    end

    def update
        chosen_hero = ChosenHero.find(params[:id])

        if chosen_hero.user == current_user
            chosen_hero.update(chosen_hero_params)
            render json: { sprite:  {url: url_for(chosen_hero.hero.sprite), width: chosen_hero.hero.width, height: chosen_hero.hero.height}, chosen_hero: ChosenHeroSerializer.new(chosen_hero)}, status: :ok
        else
            head :unauthorized
        end
    end



    private

    def chosen_hero_params
        params.require(:chosen_hero).permit(:name,:reputation,:spotify,:method)
    end





end
