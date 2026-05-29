class Message < ApplicationRecord
  after_create_commit :broadcast_append_to_conversation
  
  belongs_to :conversation

  def content_html
    html = Commonmarker.to_html(
    content,
    options: {
    extension: {
    table: true,
    strikethrough: true,
    autolink: true
    }
    }
    )

    ActionController::Base.helpers.sanitize(
    html,
    tags: %w[
    p br strong em a ul ol li blockquote
    code pre h1 h2 h3 h4 h5 h6 table thead
    tbody tr td th
    ],
    attributes: %w[href]
    )
end


  private

  def broadcast_append_to_conversation
    broadcast_append_to conversation, target: "messages", partial: "messages/message", locals: { message: self }
  end
end
