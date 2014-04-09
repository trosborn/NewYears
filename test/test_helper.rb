require 'simplecov'
SimpleCov.start 'rails'
ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails/capybara"

require "minitest/pride"

Turn.config.format = :outline

def sign_in
  visit root_path
  click_on "Login"
  fill_in "Email", with: "email@example.com"
  fill_in "Password", with: "password"
  click_on "Sign in"
end

class ActiveSupport::TestCase
  fixtures :all
end

