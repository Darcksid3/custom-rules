class Conversation < ApplicationRecord
  belongs_to :game, optional: true
  belongs_to :user

  has_many :messages, dependent: :destroy
  has_many :custom_rules, dependent: :destroy
end
