require 'rails_helper'

feature 'Article Creation' do
  before(:each) do
    sign_up
  end

  scenario 'allows user to visit new article page' do
    visit new_article_path
    expect(page).to have_content I18n.t('article.new_article')
  end

  scenario 'allows user to create article' do
    visit new_article_path

    fill_in 'Title', with: 'test title'
    fill_in 'Text', with: 'test text'

    click_button 'Publish'

    expect(page).to have_content 'Author'
  end
end