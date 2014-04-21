require 'spec_helper'

# User creation is an admin function
describe "creating a user" do

  describe "creating a valid user" do
    let(:user) { FactoryGirl.build(:admin) }
    let(:new_user) { FactoryGirl.build(:user) }
    it "logs in as an admin, goes to the admin panel, and creates a valid user" do
      visit("/")
      sign_in(user)
      create_user(new_user)
      expect(current_path).to eq admin_index_path
      expect(page).to have_content "User successfully created."
    end
  end

end

def sign_in(user)
  visit root_path
  click_link "Sign In"
  fill_in("email", {:with => user.email})
  fill_in("password", {:with => user.password})
  click_button("Login")
end

def create_user(user)
  visit "/admin"
  click_link "Create New User"
  fill_in("user_name", {:with => user.name})
  fill_in("user_email", {:with => user.email})
  fill_in("user_password", {:with => user.password})
  fill_in("user_password_confirmation", {:with => user.password})
  select("Jon Sieber", from: "user_player")
  click_button("Create Player") 
end