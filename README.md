# shoe_store
shoe store test exercise

# FIRST STEPS:
    ```
    If you don't have ruby:
    install ruby => https://www.ruby-lang.org/en/documentation/installation/
    you can also install a good version manager: rvm => https://rvm.io/
    ```

# IN THE TERMINAL:
    ```
    enter the directory
    if you have never used bundler => gem install bundler
    bundle install
    ```
    
# RUN THE TESTS IN CHROME(default browser):
    ```
    bundle exec cucumber
    ```

# RUN THE TESTS IN FIREFOX:
    ```
    BROWSER='firefox' bundle exec cucumber
    ```

# TO DEBUG:
    ```
    binding.pry as a stopping/entry point within the method
    ```
    
# TO RUN ONLY STORY1 TESTS:
    ```
    bundle exec cucumber --tags @Story1
    ```

# TO RUN ONLY STORY2 TESTS:
    ```
    bundle exec cucumber --tags @Story2
    ```
    