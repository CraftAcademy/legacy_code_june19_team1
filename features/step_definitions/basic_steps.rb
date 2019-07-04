Given("that I am on the landing page") do
    visit root_path
end

Given("that the following user exists") do |table|
    table.hashes.each do |user|
        User.create!(user)
    end
end
  
When("I click the login button") do
    pending # Write code here that turns the phrase above into concrete actions
end
  
When("I fill in {string} with {string}") do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
end
  
When("I press {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end