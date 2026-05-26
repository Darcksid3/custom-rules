class Game < ApplicationRecord
  # A game can have many conversations with users (users can have many conversations about A game)
  has_many :conversations, dependent: :destroy
  # A game can contain many custom rules
  has_many :custom_rules, dependent: :destroy

  validates :name, presence: true
  validates :nb_players, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
