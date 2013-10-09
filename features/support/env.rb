#This code will set up our testing environment.
require_relative '../../myapp'
require 'Capybara'
require 'Capybara/cucumber'
require 'rspec'

World do
  Capybara.app = MyApp

  include Capybara::DSL
  include RSpec::Matchers
end
