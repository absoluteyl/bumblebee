# BumbleBee

## Demo Site

- [BumbleBee](https://bumblebee.absoluteyl.me)

## ENVs

  all the environment variables are stored in .enc files and encrypted by SEKRETS_KEY

- Online guides

  - [dotenv](https://github.com/bkeepers/dotenv)
  - [sekrets](https://github.com/ahoward/sekrets)

- Get SEKRETS_KEY

    ```ruby
    Digest::MD5.hexdigest(Digest::MD5.hexdigest(string))
    ```

- Edit .enc file

  ```sh
  sekrets edit .env.$STAGE.enc --key $SEKRETS_KEY
  ```

- Read .enc file

  ```sh
  sekrets read .env.$STAGE.enc --key $SEKRETS_KEY > .env
  ```

## BDD - Cucumber

- Setup test database

  Check test database and development database is not the same, and run below command:

  ```sh
  bin/rails db:environment:set RAILS_ENV=test && bin/rails db:drop db:create db:migrate db:seed RAILS_ENV=test
  ```

- Online guides

  - Cucumber: [https://github.com/cucumber/cucumber](https://github.com/cucumber/cucumber)
  - Capybara: [https://github.com/jnicklas/capybara](https://github.com/jnicklas/capybara)
  - Rspec: [http://www.relishapp.com/rspec/](http://www.relishapp.com/rspec/)

- Install for Selenium Webdriver

  - Chrome: [https://www.google.com/chrome/](https://www.google.com/chrome/)

  - Chrome Driver

    ```sh
    brew install chromedriver
    ```

- Run Cucumber

  ```sh
  # run all feature
  cucumber

  # run single feature
  cucumber feature_path -r features
  ```
