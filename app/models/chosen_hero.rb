class ChosenHero < ApplicationRecord
  belongs_to :user
  belongs_to :hero

  validates :user_id, uniqueness: true
  validates :user_id,:hero_id, presence: true



end
