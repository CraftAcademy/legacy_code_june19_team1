Feature: User can sign up to the mailboxer
    As a user,
    In order to send and receive emails,
    I need to be able to set up an account.

Background: 
    Given that I am on the landing page

Scenario: User can sign up
    When I click "Sign up"
    And I fill in "Name" with "mjc"
    And I fill in "Email" with "mjc@email.com"
    And I fill in "Password" with "abcde123"
    And I fill in "Password confirmation" with "abcde123"
    And I click "Create"
    Then I should see "Welcome! You have signed up successfully."

#Scenario: [Sad path] User filled in wrong password
#    When I click "Login"
#    And I fill in "Email" with "johndoe@email.com"
#    And I fill in "Password" with "12345abc"
#    And I click "Log in"
#    Then I should see "Invalid Email or password."

#Scenario: [Sad path] User filled in wrong Email
#    When I click "Login"
#    And I fill in "Email" with "joedoe@email.com"
#    And I fill in "Password" with "abcde123"
#    And I click "Log in"
#    Then I should see "Invalid Email or password."