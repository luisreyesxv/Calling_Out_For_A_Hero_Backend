class Hero < ApplicationRecord
    has_many :chosen_heros, dependent: :destroy
    has_one_attached :sprite
end
