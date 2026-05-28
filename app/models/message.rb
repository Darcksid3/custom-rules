class Message < ApplicationRecord
  belongs_to :conversation

  MAX_USER_MESSAGES = 10

  validate :user_message_limit, if: -> { role == "user" }

  private

  def user_message_limit
    if conversation.messages.where(role: "user").count >= MAX_USER_MESSAGES
      errors.add(:content, "Vous ne pouvez utilisez que #{MAX_USER_MESSAGES} messages par conversation.")
    end
  end
end
