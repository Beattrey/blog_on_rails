# frozen_string_literal: true

require 'rails_helper'

describe 'Contact Creation' do
  it 'allows access to contacts page' do
    visit '/contacts'

    expect(page).to have_content I18n.t('contacts.contact_us')
  end

  it 'allows a guest to create contact' do
    visit '/contacts'

    fill_in :contact_email, with: 'user@email.com'
    fill_in :contact_message, with: 'some text'
    click_button 'Send message'

    expect(page).to have_content I18n.t('contacts.thanks')
  end
end
