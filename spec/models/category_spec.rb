require 'rails_helper'

RSpec.describe Category, type: :model do  
  
  describe 'Category page' do        
    let(:file) { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'files', 'food.jpeg'), 'image/jpeg') }
    before(:each) do
      @user = User.create(name: 'Rachel Isaac', email: 'rachel@gmail.com', password: 'password@123') 
      @category = Category.create(name: 'Water', author_id: @user.id)
      @category.icon.attach(file)
    end

    it 'should have a name field' do
      expect(@category).to be_valid
    end

    it "should be invalid without a name" do
      @category.name = nil
      expect(@category).to_not be_valid 
    end
    

    it "should have an icon" do
      expect(@category.icon).to be_valid 
    end

    it "should be invalid without an icon" do
      @category.icon = nil
      expect(@category).to_not be_valid
    end
    
    

     it 'should have a minimum of 3 characters' do
      expect(@category).to be_valid
    end

    it 'belongs to an author' do
      expect(@category).to be_valid
    end

  end
end