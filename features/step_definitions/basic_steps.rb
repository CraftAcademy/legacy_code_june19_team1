Given("that I am on the landing page") do
    visit root_path
end

Given("that the following user exists") do |table|
    table.hashes.each do |user|
        User.create!(user)
    end
end
  
When("I click {string}") do |text|
    click_link_or_button(text)
end
  
When("I fill in {string} with {string}") do |field, content|
    fill_in field, with: content
end