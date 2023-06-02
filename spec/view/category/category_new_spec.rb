require 'rails_helper'

RSpec.describe "Category Index page", type: :feature do  
    
    describe 'new page' do        
    before(:each) do
    @user = User.create(name: 'Rachel Isaac', email: 'rachel@gmail.com', password: 'password@123') 
    
     visit user_session_path

        fill_in 'user_email', with: @user.email
        fill_in 'user_password', with: @user.password
        click_button 'Log in'

     visit new_category_path      
    end

        it "should have content" do
            expect(page).to have_content("New Category")
        end

        it 'should have content' do   
            expect(page).to have_content('Add New Category')
        end        

        it "should have logout button" do
            expect(page).to have_content('Sign out')
        end
    end
end
