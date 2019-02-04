Feature: 02 Sign In

  Background:
    Given "John Doe" has already signed up with password: "password"

  Scenario: [02_01]
    1. User can see sign in page directly
    2. Display errors when missing required info
    3. Display error when email is not exist
    4. Display error when password is not correct
    5. User can login successfully
    # 1. User can see sign in page directly
     When the user goes to page - "/"
     Then the user should see "BumbleBee"
      And should see "Welcome back! Make yourself at home."
    # 2. Display errors when missing required info
     When the user presses "LOG IN" within "User Log In Form"
     Then the user should see "Email can't be blank"
      And should see "Password can't be blank"
    # 3. Display error when email is not exist
     When the user fills in "Email" with "not_exist@example.com"
      And fills in "Password" with "password"
      And presses "LOG IN" within "User Log In Form"
     Then the user should see "Email not found"
    # 4. Display error when password is not correct
     When the user fills in "Email" with "john_doe@example.com"
      And fills in "Password" with "wrong_password"
      And presses "LOG IN" within "User Log In Form"
     Then the user should see "Invalid email or password"
    # 5. User can register as a normal user
     When the user fills in "Email" with "john_doe@example.com"
      And fills in "Password" with "password"
     When the user presses "LOG IN" within "User Log In Form"
     Then the user should be at page - "/"
      And should see "Hey John, how can we help you today?"

  Scenario: [02_01]
    1. User can also see sign in page after clicking LOG IN button
    2. Display errors when missing required info
    3. User can login successfully
    # 1. User can also see sign in page after clicking LOG IN button
     When the user goes to page - "/"
     Then the user should see "BumbleBee"
     When the user clicks "LOG IN"
     Then the user should be at page - "/users/sign_in"
      And should see "Welcome back! Make yourself at home."
    # 2. Display errors when missing required info
     When the user presses "LOG IN" within "User Log In Form"
     Then the user should see "Email can't be blank"
      And should see "Password can't be blank"
    # 3. User can register as a normal user
     When the user fills in "Email" with "john_doe@example.com"
      And fills in "Password" with "password"
     When the user presses "LOG IN" within "User Log In Form"
     Then the user should be at page - "/"
      And should see "Hey John, how can we help you today?"
