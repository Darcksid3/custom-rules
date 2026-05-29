class Message < ApplicationRecord
  after_create_commit :broadcast_append_to_conversation
  
  belongs_to :conversation
  private

  def broadcast_append_to_conversation
    broadcast_append_to conversation, target: "messages", partial: "messages/message", locals: { message: self }
  end
end
