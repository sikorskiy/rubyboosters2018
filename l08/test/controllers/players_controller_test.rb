require 'test_helper'

class PlayersControllerTest < ActionDispatch::IntegrationTest
  test "should get rules" do
    get players_rules_url
    assert_response :success
  end

  test "should get champions" do
    get players_champions_url
    assert_response :success
  end

  test "should get home" do
    get players_home_url
    assert_response :success
  end

end
