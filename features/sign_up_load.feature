Feature: Display sign up page and signup user
    As a user,
    In order to send emails,
    I need to be able to set up an account.

Scenario: Display signup function on signup page, and fill out form.
    When I visit the signup page
    Then I should see "Name"
 