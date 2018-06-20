require 'test_helper'

class CompanyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get company_index_url
    assert_response :success
  end

  test "should get new" do
    get company_new_url
    assert_response :success
  end

  test "should get create" do
    get company_create_url
    assert_response :success
  end

  test "should get funding" do
    get company_funding_url
    assert_response :success
  end

  test "should get info" do
    get company_info_url
    assert_response :success
  end

  test "should get photo_upload" do
    get company_photo_upload_url
    assert_response :success
  end

  test "should get contact" do
    get company_contact_url
    assert_response :success
  end

  test "should get update" do
    get company_update_url
    assert_response :success
  end

end
