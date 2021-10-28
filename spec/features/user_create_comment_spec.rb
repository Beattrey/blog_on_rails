require 'rails_helper'

feature 'Create comment' do
  before(:each) do
    sign_up
    create_article
  end

  scenario 'allows user to visit comments page' do
    expect(page).to have_content I18n.t('article.your_comments')
  end

  scenario 'allows user to create comment' do

    fill_in 'comment_body', with: 'body test comments'

    click_button I18n.t('article.create_comment')

    expect(page).to have_content 'John Appleseed says:'
    expect(page).to have_content 'body test comments'
  end
end
