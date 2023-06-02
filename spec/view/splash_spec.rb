require 'rails_helper'

RSpec.describe "Splash", type: :system do
      
    describe 'index page' do
        before :each do
            visit root_path
        end

        it 'shows the login button' do
            expect(page).to have_link('Log in')
        end
        
        it 'shows the sign up button' do
            expect(page).to have_link('Sign up')
        end

        it 'shows the name of the app' do
            expect(page).to have_content('BudgetBuddy')
        end

        it "should go to the login page" do
            click_on "Log in"
            expect(page).to  have_content('Log in')
        end  

        it "should go to the register page" do
            click_on "Sign up"
            expect(page).to  have_content('Sign up')
        end    
        it "should not have this content" do
            expect(page).to_not have_content('Snap scan')
        end
        it "does not exist on the page" do
            expect(page).to_not have_content('Welcome')
        end
        
    end
end