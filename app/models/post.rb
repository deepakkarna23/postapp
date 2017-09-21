class Post < ActiveRecord::Base
  belongs_to :user

  attr_accessor :user_id, :description
  validates :description, :user_id, presence: true
end
