Feature: 05 Upgrade Premium

  Background:
    Given "Admin User" has already signed up with password: "password" as "admin"
    Given "John Doe" has already signed up with password: "password"

  Scenario: [05_01]
    0. Admin create product for later steps
    1. User can see Upgrade Premium Button on header and not able to see premium price
    2. User can upgrade successfully
    3. After upgrade, User can see premium price for products
    # 0. Admin create product for later steps
     When the user goes to page - "/"
      And fills in "Email" with "admin_user@example.com"
      And fills in "Password" with "password"
      And presses "LOG IN" within "User Log In Form"
      And clicks "CREATE PRODUCT"
      And fills in "Product Name" with "Tasmania Cherry, Class A, 1kg"
      And fills in "Price" with "1300"
      And uploads a image file - "cherry.jpg"
      And presses "SUBMIT"
      And clicks "SIGN OUT"
    # 1. User can see Upgrade Premium Button on header and not able to see premium price
     When the user goes to page - "/"
      And fills in "Email" with "john_doe@example.com"
      And fills in "Password" with "password"
      And presses "LOG IN" within "User Log In Form"
     Then the user should be at page - "/"
      And should see "UPGRADE PREMIUM"
      And should see "Tasmania Cherry, Class A, 1kg"
      And should see "Price: 1300"
      And should not see "Premium Price: 1040"
     When the user clicks "UPGRADE PREMIUM"
     Then the user should be at page - "/upgrade"
      And should see "Upgrade your membership now!"
    # 2. User can upgrade successfully
     When the user presses "UPGRADE NOW for $30/month"
     Then the user should be at page - "/"
      And should see "You're all set! Enjoy shopping!"
      And should not see "UPGRADE PREMIUM"
    # 3. After upgrade, User can see premium price for products
      And should see "Tasmania Cherry, Class A, 1kg"
      And should see "Price: 1300"
      And should see "Premium Price: 1040"
