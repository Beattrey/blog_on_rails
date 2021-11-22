# frozen_string_literal: true

require 'rails_helper'

describe 'Edit article' do
  before do
    sign_up
    create_article
  end

  it 'allows user to visit articles page' do
    click_link I18n.t('article.edit')

    expect(page).to have_content I18n.t('article.edit_article')
  end

  it 'allows user to edit article' do
    click_link I18n.t('article.edit')

    fill_in 'article_title', with: 'Edited test title 123'
    fill_in 'article_text', with: 'Edited test text 123'

    click_button 'Save'

    expect(page).to have_content 'Edited test title 123'
    expect(page).to have_content 'Edited test text 123'
  end
end
