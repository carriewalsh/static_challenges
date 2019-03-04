require "./test/test_helper"
require "pry"

class StaticTwoTest < CapybaraTestCase
  def test_user_can_see_homepage
    visit "/"
    assert page.has_content?("5280 Landmarks")
    assert_equal 200, page.status_code
  end

  # def test_home_page_has_styling
  #   visit "/"
  #   assert
  #   assert_equal 200, page.status_code
  # end
end
