class CustomRule < ApplicationRecord
  belongs_to :conversation
  belongs_to :game

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
end

