class ChosenHero < ApplicationRecord
  belongs_to :user
  belongs_to :hero

  validates :user_id, uniqueness: true
  validates :user_id,:hero_id, presence: true


  def self.hire(user:, params: )
    if params[:method] == "random"
     hiredHero = self.randomHero(user: user)
     return hiredHero
    end

    
  end


    def self.randomHero (user:)
     return ChosenHero.create(user: user, hero: Hero.first(3).sample, name: "Random McGee", reputation: 0)
    end


    # def self.randomHero(userObj: {id: 152,name: "swag"})
    #  return ChosenHero.new(user_id: userObj[:id], hero: Hero.first(3).sample, name: "Random McGee", reputation: 0)
    # end

end
