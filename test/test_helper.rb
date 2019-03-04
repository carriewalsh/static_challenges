require "minitest/autorun"
require "minitest/pride"
require "capybara/minitest"
require "./app/controllers/static_2"

Capybara.app = StaticTwo
class CapybaraTestCase < MiniTest::Test
  include Capybara::DSL
  include Capybara::Minitest::Assertions
end
