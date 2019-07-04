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

Scenario: [Sad path] User filled in unmatching passwords
   When I click "Sign up"
   And I fill in "Name" with "mjc"
   And I fill in "Email" with "mjc@email.com"
   And I fill in "Password" with "abcde123"
   And I fill in "Password confirmation" with "12345abc"
   And I click "Create"
   Then I should see "Password confirmation doesn't match Password"

Scenario: [Sad path] User filled in too short Password
   When I click "Sign up"
   And I fill in "Name" with "mjc"
   And I fill in "Email" with "mjc@email.com"
   And I fill in "Password" with "abcde"
   And I fill in "Password confirmation" with "abcde"
   And I click "Create"
   Then I should see "Password is too short (minimum is 8 characters)"

Scenario: [Sad path] User filled in too long name
   When I click "Sign up"
   And I fill in "Name" with "maxjuliecamilla"
   And I fill in "Email" with "mjc@email.com"
   And I fill in "Password" with "abcde123"
   And I fill in "Password confirmation" with "abcde123"
   And I click "Create"
   Then I should see "Name is too long (maximum is 10 characters)"

Scenario: [Sad path] User did not fill in name
    When I click "Sign up"
    And I fill in "Name" with " "
    And I fill in "Email" with "mjc@email.com"
    And I fill in "Password" with "abcde123"
    And I fill in "Password confirmation" with "abcde123"
    And I click "Create"
    Then I should see "Name can't be blank"