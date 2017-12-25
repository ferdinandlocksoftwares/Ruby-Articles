require "rails_helper"


RSpec.feature "Showing an Articles" do
	before do
		@john = User.create(email: "john@example.com", password: "password")
		@fred = User.create(email: "fred@example.com", password: "password")
		@article = Article.create(title: "The 2nd article", body: "body of 2nd article", user: @john)
	end

	scenario "to non signed in user hide Edit and Delete button" do
		visit "/"

		click_link @article.title

		expect(page).to have_content(@article.title)
		expect(page).to have_content(@article.body)
		expect(current_path).to eq(article_path(@article))
		expect(page).not_to have_link("Delete Article")
		expect(page).not_to have_link("Edit Article")
	end

	scenario "to non owner hide Edit and Delete button" do
		login_as(@fred)
		visit "/"

		click_link @article.title

		expect(page).to have_content(@article.title)
		expect(page).to have_content(@article.body)
		expect(current_path).to eq(article_path(@article))
		expect(page).not_to have_link("Delete Article")
		expect(page).not_to have_link("Edit Article")
	end

	scenario "to signed in user hide Edit and Delete button" do
		login_as(@john)
		visit "/"

		click_link @article.title

		expect(page).to have_content(@article.title)
		expect(page).to have_content(@article.body)
		expect(current_path).to eq(article_path(@article))
		expect(page).to have_link("Delete Article")
		expect(page).to have_link("Edit Article")
	end
end