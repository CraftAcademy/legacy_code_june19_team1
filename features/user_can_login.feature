Feature: User can login to the mailboxer
    As a user,
    I want to be able to log in,
    In order to send/receive mails.

Background: 
    Given that I am on the landing page
    And that the following user exists
    | name | email             | password |
    | john doe | johndoe@email.com | abcde123 |

Scenario: User can login
    When I click "Login"
    And I fill in "Email" with "johndoe@email.com"
    And I fill in "Password" with "abcde123"
    And I click "Log in"
    Then I should see "Signed in successfully."
