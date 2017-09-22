class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :text, :user_id, :post_id, presence: true

  delegate :name, to: :user, prefix: true
end
