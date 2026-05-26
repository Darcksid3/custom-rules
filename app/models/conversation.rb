class Conversation < ApplicationRecord
  belongs_to :game
  belongs_to :user
  
  has_many :messages, dependent: :destroy
end
