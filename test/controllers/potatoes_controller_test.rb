require 'test_helper'

class PotatoesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get potatoes_index_url
    assert_response :success
  end

end
