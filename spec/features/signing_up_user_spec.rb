 require "rails_helper"

 RSpec.feature "Signup Users" do
 	scenario "with valid credentials" do
 		visit "/"
 		click_link "Sign up"
 		fill_in "Email", with: "user@example.com"
 		fill_in "Password", with: "password"
 		click_button "Sign up"

 		# expect(page).to have_content("You have signed up successfully.")
 	end

 	scenario "with invalid credentials" do
 		visit "/"
 		click_link "Sign up"
 		fill_in "Email", with: ""
 		fill_in "Password", with: ""
 		click_button "Sign up"

 		# expect(page).to have_content("You not have signup Successfully")
 	end
 end