# frozen_string_literal: true

def create_article
  visit new_article_path

  fill_in 'Title', with: 'test title123'
  fill_in 'Text', with: 'test 123 text'

  click_button I18n.t('article.publish_btn')
end
