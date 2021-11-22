# frozen_string_literal: true

class Article < ApplicationRecord
  has_many :comments
  belongs_to :user, optional: true
  validates :title, presence: true, length: { maximum: 140 }
  validates :text, presence: true, length: { maximum: 4000 }

  def subject
    title
  end

  def last_comment
    comments.last
  end
end
