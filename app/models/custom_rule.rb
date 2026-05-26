class CustomRule < ApplicationRecord
  belongs_to :conversation
  belongs_to :game
end
