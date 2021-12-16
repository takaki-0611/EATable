require 'test_helper'

class Admin::CoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get index," do
    get admin_courses_index,_url
    assert_response :success
  end

  test "should get show," do
    get admin_courses_show,_url
    assert_response :success
  end

  test "should get edit" do
    get admin_courses_edit_url
    assert_response :success
  end

end
