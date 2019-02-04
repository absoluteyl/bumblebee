Feature: 01 - Sign Up

  Background:
    Given "John Doe" has already signed up with password: "password"

  Scenario: [01_01]
    1. User can find sign up page
    2. Display errors when missing required info
    3. Display error when email is already been taken
    4. User can register as a normal user
    # 1. User can find sign up page
     When the user goes to page - "/"
     Then the user should see "BumbleBee"
     When the user clicks "SIGN UP"
     Then the user should be at page - "/users/sign_up"
      And should see "Hi, let's get to know each other."
    # 2. Display errors when missing required info
     When the user presses "SIGN UP" within "User Sign Up Form"
     Then the user should see "First name can't be blank"
      And should see "Last name can't be blank"
      And should see "Email can't be blank"
      And should see "Password can't be blank"
    # 3. Display error when email is already been taken
     When the user fills in "First Name" with "John"
      And fills in "Last Name" with "Doe"
      And fills in "Email" with "john_doe@example.com"
      And fills in "Password" with "password"
      And presses "SIGN UP" within "User Sign Up Form"
     Then the user should see "Email is been taken"
    # 4. User can register as a normal user
     When the user fills in "First Name" with "Jane"
      And fills in "Last Name" with "Doe"
      And fills in "Email" with "jane_doe@example.com"
      And fills in "Password" with "password"
      And presses "SIGN UP" within "User Sign Up Form"
     Then the user should be at page - "/"
      And should see "Hey Jane, how can we help you today?"
      And should not see "SIGN UP"
      And should not see "LOG IN"
