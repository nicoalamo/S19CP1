require 'test_helper'

class AllocationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get allocations_index_url
    assert_response :success
  end

  test "should get create" do
    get allocations_create_url
    assert_response :success
  end

end
