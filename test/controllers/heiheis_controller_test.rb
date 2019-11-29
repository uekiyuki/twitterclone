require 'test_helper'

class HeiheisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get heiheis_index_url
    assert_response :success
  end

end
