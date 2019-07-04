Feature: User can login to the mailboxer
    As a user,
    I want to be able to log in,
    In order to send/receive mails.

Background: 
    Given that the following user exists
    | email             | password |
    | johndoe@email.com | abcde123 |

Scenario: User can login
    When I click the login button
    And I fill in "Email" with 'johndoe@email.com'
    And I fill in 'Password' with 'abcde123'
    And I press "Login"
    Then I should see 'Signed in successfully.'
