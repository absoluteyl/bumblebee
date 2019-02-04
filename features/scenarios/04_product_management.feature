Feature: 04 Product Management

  Background:
    Given "John Doe" has already signed up with password: "password" as "admin"

  @javascript
  Scenario: [04_01]
    1. Admin  can find create product page
    2. Display errors when missing required info
    3. Admin  can create product successfully
    4. Admin  can see product details
    5. Admin  can find edit product page
    6. Admin  can edit product successfully
    7. Admin  can see all products
    # 1. Admin can find create product page
     When the admin goes to page - "/"
      And fills in "Email" with "john_doe@example.com"
      And fills in "Password" with "password"
      And presses "LOG IN" within "User Log In Form"
     Then the admin should be at page - "/"
      And should see "CREATE PRODUCT"
     When the admin clicks "CREATE PRODUCT"
     Then the admin should be at page - "/products/new"
      And should see "Product Create"
    # 2. Display errors when missing required info
     When the admin presses "SUBMIT"
     Then the admin should see "Name can't be blank"
      And should see "Price can't be blank and Price is not a number"
      And should see "Image is not attached"
    # 3. Admin can create product successfully
     When the admin fills in "Product Name" with "Tasmania Cherry, Class A, 1kg"
      And fills in "Price" with "1300"
      And uploads a image file - "cherry.jpg"
      And presses "SUBMIT"
    # 4. Admin user can see product details
     Then the admin should be at page - "/products/1"
      And should see "Tasmania Cherry, Class A, 1kg"
      And should see "Price: 1300"
    # 5. Admin user can find edit product page
     When the admin clicks "EDIT"
     Then the admin should be at page - "/products/1/edit"
    # 6. Admin user can edit product successfully
      And fills in "Product Name" with "Tasmania Cherry, Class A, 2kg"
      And fills in "Price" with "2300"
      And presses "SUBMIT"
     Then the admin should be at page - "/products/1"
      And should see "Tasmania Cherry, Class A, 2kg"
      And should see "Price: 2300"
    # 7. Admin user can see products on root page
     When the admin goes to page - "/"
     Then the admin should see "Tasmania Cherry, Class A, 2kg"
      And should see "Price: 2300"
