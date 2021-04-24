require "test_helper"

class SemaphoresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get semaphores_index_url
    assert_response :success
  end

  test "should get new" do
    get semaphores_new_url
    assert_response :success
  end

  test "should get show" do
    get semaphores_show_url
    assert_response :success
  end

  test "should get edit" do
    get semaphores_edit_url
    assert_response :success
  end
end
