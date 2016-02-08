class Article < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :title, :text, presence: true
end
