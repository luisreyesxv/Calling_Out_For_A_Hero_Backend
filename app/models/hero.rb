class Hero < ApplicationRecord
    has_many :chosen_heros, dependent: :destroy
    has_many :user, through: :chosen_heros
    has_one_attached :sprite
end
