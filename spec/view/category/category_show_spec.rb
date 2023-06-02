# require 'rails_helper'

# RSpec.describe "Category Index page", type: :feature do  
    
#     describe 'new page' do        
#         let(:file) { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'files', 'food.jpeg'), 'image/jpeg') }
#         before(:each) do
#         @user = User.create(name: 'Rachel Isaac', email: 'rachel@gmail.com', password: 'password@123') 
#         @category = Category.create(name: 'Water', author_id: @user.id)
#         @category.icon.attach(file)
#         @budget_first = Budget.create(name: 'Water', amount: 30.0, author_id: @user.id )
#         @budget_second = Budget.create(name: 'Clothes', amount: 25.0, author_id: @user.id )
#         @budget_categories = BudgetCategory.create(budget_id: @budget_first.id, category_id: @category.id)
#         @budget_categories_two = BudgetCategory.create(budget_id: @budget_second.id, category_id: @category.id)
#         p @budget_first
#         p @budget_second
#         p @budget_categories
#         p @budget_categories_two


#         visit new_user_session_path

#             fill_in 'user_email', with: @user.email
#             fill_in 'user_password', with: @user.password
#             click_button 'Log in'

               
#         end

#         it 'should have content' do 
#             visit category_path(@category.id)   
#             expect(page).to have_content('Add New Transaction')
#         end        

#         it "should have logout button" do
#             visit category_path(@category.id)   
#             expect(page).to have_content('Sign out')
#         end

#         it "display the name of each budget" do
#             @category.budgets.each do |budget| 
#                 expect(page).to have_content(budget.name)  
#             end
#         end
        
#     end
# end
