require "test_helper"

class LecturersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lecturers_index_url
    assert_response :success
  end

  test "should get show" do
    get lecturers_show_url
    assert_response :success
  end

  test "should get new" do
    get lecturers_new_url
    assert_response :success
  end

  test "should get edit" do
    get lecturers_edit_url
    assert_response :success
  end
end
