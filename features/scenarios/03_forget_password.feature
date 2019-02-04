Feature: 03 Forget Password

  Background:
    Given "John Doe" has already signed up with password: "password"

  Scenario: [03_01]
    1. User can find reset password page
    2. Display errors when missing required info
    3. Display errors when account is not exist
    4. User can receive password reset email
    5. User can reset password successfully
    # 1. User can find reset password page
     When the user goes to page - "/"
     Then the user should see "BumbleBee"
     When the user clicks "Forgot Password"
     Then the user should be at page - "/users/password/new"
      And should see "Forgot your password?"
    # 2. Display errors when missing required info
     When the user presses "RESET PASSWORD"
     Then the user should see "Email can't be blank"
    # 3. Display errors when account is not exist
     When the user fills in "Email" with "not_exist@example.com"
     When the user presses "RESET PASSWORD"
     Then the user should see "Email not found"
    # 4. User can receive password reset email
     When the user fills in "Email" with "john_doe@example.com"
     When the user presses "RESET PASSWORD"
     Then the user should be at page - "/users/sign_in"
      And should see "You will receive an email with instructions on how to reset your password in a few minutes."
      And "john_doe@example.com" should receive an emails with subject "Reset password instructions"
    # 5. User can reset password successfully
     When "john_doe@example.com" opens the email with subject "Reset password instructions"
     Then the customer should see "Someone has requested a link to change your password. You can do this through the link below." in the email body
     When "john_doe@example.com" follows "Change my password" in the email
      And fills in "Password" with "new_password"
      And presses "Change my password"
     Then the customer should see "Signed in successfully."
