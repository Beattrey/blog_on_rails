require 'rails_helper'

feature 'Edit article' do
  before(:each) do
    sign_up
    create_article
  end

  scenario 'allows user to visit articles page' do
    click_link I18n.t('article.edit')

    expect(page).to have_content I18n.t('article.edit_article')
  end

  scenario 'allows user to edit article' do
    click_link I18n.t('article.edit')

    fill_in 'article_title', with: 'Edited test title 123'
    fill_in 'article_text', with: 'Edited test text 123'

    click_button 'Save'

    expect(page).to have_content 'Edited test title 123'
    expect(page).to have_content 'Edited test text 123'
  end
end