class Article < ApplicationRecord
  has_many :comments
  belongs_to :user, optional: true
  validates :title, presence: true
  validates :text, presence: true

  def subject
    title
  end
end
