# frozen_string_literal: true

require 'rails_helper'

describe 'Create comment' do
  before do
    sign_up
    create_article
  end

  it 'allows user to visit comments page' do
    expect(page).to have_content I18n.t('article.your_comments')
  end

  it 'allows user to create comment' do
    fill_in 'comment_body', with: 'body test comments'

    click_button I18n.t('article.create_comment')

    expect(page).to have_content 'John Appleseed says:'
    expect(page).to have_content 'body test comments'
  end
end
