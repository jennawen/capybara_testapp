Given /^I am on the home page$/ do
  visit "/"
end
 
Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content text
end



# In this little snippet here, we’re using Cucumber, Rspec, and Capybara. 
# Firstly, we’ve got the cucumber Given and Then method calls. Secondly, 
# we’re using the Capybara methods visit (to visit a URL) and has_content?.
#  But you don’t see the call to has_content? because we’ve loaded the RSpec 
#  matchers, so we can make our tests read as they would with Rspec. 
#  If we wanted to leave RSpec out, we would just write 'page.has_content? text'.


Then /^I should see "([^"]*)" in the selector "([^"]*)"$/ do |text, selector|
  page.should have_selector selector, content: text
end
 
Then /^I should see "([^"]*)" in a link$/ do |text|
  page.should have_link text
end



# You should be able to tell what these are doing: the first looks for 
# text within a certain element on the page. The second looks for a 
# link with the given text (yes, you could have done Then I should see 
#   "Sign up ..." in the selector "a", but I wanted to should you another
#    Capybara/Rspec method)
