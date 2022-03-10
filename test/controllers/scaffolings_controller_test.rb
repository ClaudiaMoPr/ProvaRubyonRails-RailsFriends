require 'test_helper'

class ScaffolingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scaffoling = scaffolings(:one)
  end

  test "should get index" do
    get scaffolings_url
    assert_response :success
  end

  test "should get new" do
    get new_scaffoling_url
    assert_response :success
  end

  test "should create scaffoling" do
    assert_difference('Scaffoling.count') do
      post scaffolings_url, params: { scaffoling: {  } }
    end

    assert_redirected_to scaffoling_url(Scaffoling.last)
  end

  test "should show scaffoling" do
    get scaffoling_url(@scaffoling)
    assert_response :success
  end

  test "should get edit" do
    get edit_scaffoling_url(@scaffoling)
    assert_response :success
  end

  test "should update scaffoling" do
    patch scaffoling_url(@scaffoling), params: { scaffoling: {  } }
    assert_redirected_to scaffoling_url(@scaffoling)
  end

  test "should destroy scaffoling" do
    assert_difference('Scaffoling.count', -1) do
      delete scaffoling_url(@scaffoling)
    end

    assert_redirected_to scaffolings_url
  end
end
