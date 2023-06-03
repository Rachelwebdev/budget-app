require 'rails_helper'

RSpec.describe 'Category Index page', type: :feature do
  describe 'index page' do
    before(:each) do
      @user = User.create(name: 'Rachel Isaac', email: 'rachel@gmail.com', password: 'password@123')

      visit user_session_path

      fill_in 'user_email', with: @user.email
      fill_in 'user_password', with: @user.password
      click_button 'Log in'

      visit categories_path
    end

    it 'should have content' do
      expect(page).to have_content('Category')
    end
    it 'shows the add category button' do
      expect(page).to have_link('ADD CATEGORY')
    end

    it 'should have logout button' do
      expect(page).to have_content('Sign out')
    end
  end
end
