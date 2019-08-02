require 'test_helper'

class ArtworkSharesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get artwork_shares_index_url
    assert_response :success
  end

  test "should get create" do
    get artwork_shares_create_url
    assert_response :success
  end

  test "should get show" do
    get artwork_shares_show_url
    assert_response :success
  end

  test "should get update" do
    get artwork_shares_update_url
    assert_response :success
  end

  test "should get destroy" do
    get artwork_shares_destroy_url
    assert_response :success
  end

end
