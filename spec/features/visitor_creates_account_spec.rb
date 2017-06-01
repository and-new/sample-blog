require "spec_helper"

feature "Account Creation" do 
  scenario "allows access to create account" do
    sign_up
    expect(page).to have_content I18n.t('devise.registrations.signed up')
  end
end
