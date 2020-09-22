class ChosenHeroSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :hero_id, :name, :reputation
    
    
    end