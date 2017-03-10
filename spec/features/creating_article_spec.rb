require "rails_helper"

RSpec.feature "Creating articles" do
  scenario "A user creates a new article" do
    visit "/"
    
    click_link "New Article"
    
    fill_in "Title", with: "Creating a Blog"
    fill_in "Body", with: "Lorem Ipsum Batman"
    
    click_button "Create Article"
    
    expect(page).to have_content("Article has been created")
    expect(page.current_path).to eq(articles_path) 
  end
end