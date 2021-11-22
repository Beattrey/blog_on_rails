# frozen_string_literal: true

require 'rails_helper'

describe 'Article Creation' do
  before do
    sign_up
  end

  it 'allows user to visit new article page' do
    visit new_article_path
    expect(page).to have_content I18n.t('article.new_article')
  end

  it 'allows user to create article' do
    create_article

    expect(page).to have_content 'test title123'
    expect(page).to have_content 'test 123 text'
  end
end
