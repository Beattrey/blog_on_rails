# frozen_string_literal: true

require 'rails_helper'

describe Article do
  describe 'validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_length_of(:title).is_at_most(140) }
    it { is_expected.to validate_presence_of :text }
    it { is_expected.to validate_length_of(:text).is_at_most(4000) }
  end

  describe 'associations' do
    it { is_expected.to have_many :comments }
  end

  describe '#subject' do
    it 'returns the article title' do
      # созадем объект article хитрым способом
      article = create(:article, title: 'Lorem Ipsum')

      # assert, проверка
      expect(article.subject).to eq 'Lorem Ipsum'
    end
  end

  describe '#last_comment' do
    it 'returns last comment' do
      # создаем статью, но в этот раз с комментариями
      article = create(:article_with_comments)

      # проверка
      expect(article.last_comment.body).to eq 'comment body 3'
    end
  end
end
