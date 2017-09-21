class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  attr_accessor :user_id, :description
  validates :description, :user_id, presence: true
end
