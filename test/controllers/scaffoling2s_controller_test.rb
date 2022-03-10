require 'test_helper'

class Scaffoling2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scaffoling2 = scaffoling2s(:one)
  end

  test "should get index" do
    get scaffoling2s_url
    assert_response :success
  end

  test "should get new" do
    get new_scaffoling2_url
    assert_response :success
  end

  test "should create scaffoling2" do
    assert_difference('Scaffoling2.count') do
      post scaffoling2s_url, params: { scaffoling2: { email: @scaffoling2.email, first_name: @scaffoling2.first_name, last_name: @scaffoling2.last_name, phone: @scaffoling2.phone, twitter: @scaffoling2.twitter } }
    end

    assert_redirected_to scaffoling2_url(Scaffoling2.last)
  end

  test "should show scaffoling2" do
    get scaffoling2_url(@scaffoling2)
    assert_response :success
  end

  test "should get edit" do
    get edit_scaffoling2_url(@scaffoling2)
    assert_response :success
  end

  test "should update scaffoling2" do
    patch scaffoling2_url(@scaffoling2), params: { scaffoling2: { email: @scaffoling2.email, first_name: @scaffoling2.first_name, last_name: @scaffoling2.last_name, phone: @scaffoling2.phone, twitter: @scaffoling2.twitter } }
    assert_redirected_to scaffoling2_url(@scaffoling2)
  end

  test "should destroy scaffoling2" do
    assert_difference('Scaffoling2.count', -1) do
      delete scaffoling2_url(@scaffoling2)
    end

    assert_redirected_to scaffoling2s_url
  end
end
