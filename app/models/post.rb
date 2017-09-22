class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy

  #attr_accessor :user_id, :description
  validates :description, :user_id, presence: true

  delegate :photo, :name, to: :user, prefix: true

  def user_name
    user.name
  end

end
