Feature: Timescity login feature 

Scenario: User gets successful logout if user is already logged in

          Given I am on the "delhi" home page
          And If I am logged in
          And I click on link "Logout"
          Then I should be successfully logged out on this page

Scenario: User should see email and password with login button

          Given I am on the "delhi" home page 
          And I am logged out
          And I click on link "Login"
          Then I should be see "email address label"
          And I should see "password label"
          And I should see "email address text box"
          And I should see "password text box"


Scenario: User tries to login but skips a password field

          Given I am on the "delhi" home page
          And I am "logged out"
          Then I click on "login" link
          And I enter "email address" in textbox
          And I leave the "password" blank 
          And I click "login button" in the login popup
          Then I should see validation message "Please Enter Password"

 
Scenario: User tries to login but skips a email address field     

           Given I am on the "delhi" home page
           And I enter "password" in textbox
           And I leave the "email address" blank 
           And I click "login button" in the login popup
           Then I should see "Please Enter Email Address" 
 

Scenario: User tries to login but skips a email address and password field

           Given I am on the "delhi" home page
           And I leave the "password" blank 
           And I leave the "email address" blank
           And I click "login button" in the login popup
           Then I should see "Please Enter Email Address" 


Scenario: User able to login with facebook connect

             Given I am on the "delhi" home page
             And I click "Facebook Connect"
             And I enter in "testtesting701@yahoo.in" for Email text box
             And I enter in "times@123" for Password text box
             And I click "Log In button" in the login popup
             Then I should see user name on home page with Hi Gagan


Scenario: User able to login with facebook

          Given I am on the "delhi" home page
          And I click on "login" link
          And I click on "Login with Facebook"
          Then I should see facebook login pop window
          And I enter in "testtesting701@yahoo.in" for Email text box
          And I enter in "times@123" for "Password" 
          Then I should see user name on home page with Hi Gagan

 
Scenario: Unsuccessful login with facebook 

          Given I am on the "delhi" home page
          And I click on "login"
          And I click on "Login with Facebook" button
          And I enter in "testtesting@yahoo.in" for Email text box
          And I enter in "times@123" for "Password"
          Then the facebook login popup should say "Incorrect Email"


 Scenario: Forgot password pop up for member login 
 
          Given I am on the "delhi" home page
          And I click on "login" link
          And I click on "Forgot Password?" link
          Then Pop up window should open with title "Forgot Password" with email label and text box


 Scenario: Sucessfully Forgot password for member login 

          Given I am on the "delhi" home page
          And I click on "login" link
          And I click on "Forgot Password?" link
          And I enter email address and click on submit button
          Then I should see a message "Reset Password Link Has Been Sent To Your Email-Address"

