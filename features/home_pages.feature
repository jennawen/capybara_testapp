Feature: Viewer visits the Home Page
  In order to read the page
  As a viewer
  I want to see the home page of my app


Scenario: View home page
  Given I am on the home page
  Then I should see "Every cookie, every monster."

Scenario: Find heading on home page
  Given I am on the home page
  Then I should see "The Cookie Monster Network" in the selector "h1"
 
Scenario: Find the link to the form
  Given I am on the home page
  Then I should see "Sign up for our newsletter." in a link
