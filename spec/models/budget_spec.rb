# require 'rails_helper'

# RSpec.describe Budget, type: :model do
#     before(:each) do
#       @user = User.create(name: 'Rachel Isaac', email: 'rachel@gmail.com', password: 'password@123') 
#       @budget = Budget.new(name: 'Water', amount: 20, author_id: @user.id)
#     end

#   it 'requires a name' do
#     expect(@budget.name).to be_valid
#   end

#   it 'requires an amount' do
#     expect(@budget.amount).to be_valid
#   end

#   it 'requires a non-negative amount' do
#     @budget.amount = -20
#     expect(@budget.amount).to_not be_valid
#   end

#   it 'belongs to an author' do
#     expect(@budget.author_id).to be_valid
#   end
# end