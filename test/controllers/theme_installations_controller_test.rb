require 'test_helper'

class ThemeInstallationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @theme_installation = theme_installations(:one)
  end

  test "should get index" do
    get theme_installations_url
    assert_response :success
  end

  test "should get new" do
    get new_theme_installation_url
    assert_response :success
  end

  test "should create theme_installation" do
    assert_difference('ThemeInstallation.count') do
      post theme_installations_url, params: { theme_installation: { shop_id: @theme_installation.shop_id, theme_id: @theme_installation.theme_id } }
    end

    assert_redirected_to theme_installation_url(ThemeInstallation.last)
  end

  test "should show theme_installation" do
    get theme_installation_url(@theme_installation)
    assert_response :success
  end

  test "should get edit" do
    get edit_theme_installation_url(@theme_installation)
    assert_response :success
  end

  test "should update theme_installation" do
    patch theme_installation_url(@theme_installation), params: { theme_installation: { shop_id: @theme_installation.shop_id, theme_id: @theme_installation.theme_id } }
    assert_redirected_to theme_installation_url(@theme_installation)
  end

  test "should destroy theme_installation" do
    assert_difference('ThemeInstallation.count', -1) do
      delete theme_installation_url(@theme_installation)
    end

    assert_redirected_to theme_installations_url
  end
end
