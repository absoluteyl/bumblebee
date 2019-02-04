Given /^"([^"]*)" has already signed up with password: "([^"]*)"(?:| as "([^"]*)")$/ do |username, password, role|
  first_name = username.split(' ')[0]
  last_name  = username.split(' ')[1]
  email      = "#{username.parameterize.underscore}@example.com"
  admin      = role == "admin" ? true : false
  user = User.create(
    first_name: first_name,
    last_name:  last_name,
    email:      email,
    password:   password,
    admin:      admin
  )
  expect(User.exists?(email: email)).to be_truthy
end
