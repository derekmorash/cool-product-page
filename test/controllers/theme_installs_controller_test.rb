require 'test_helper'

class ThemeInstallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @theme_install = theme_installs(:one)
  end

  test "should get index" do
    get theme_installs_url
    assert_response :success
  end

  test "should get new" do
    get new_theme_install_url
    assert_response :success
  end

  test "should create theme_install" do
    assert_difference('ThemeInstall.count') do
      post theme_installs_url, params: { theme_install: { shop_domain: @theme_install.shop_domain, shop_id: @theme_install.shop_id, theme_id: @theme_install.theme_id } }
    end

    assert_redirected_to theme_install_url(ThemeInstall.last)
  end

  test "should show theme_install" do
    get theme_install_url(@theme_install)
    assert_response :success
  end

  test "should get edit" do
    get edit_theme_install_url(@theme_install)
    assert_response :success
  end

  test "should update theme_install" do
    patch theme_install_url(@theme_install), params: { theme_install: { shop_domain: @theme_install.shop_domain, shop_id: @theme_install.shop_id, theme_id: @theme_install.theme_id } }
    assert_redirected_to theme_install_url(@theme_install)
  end

  test "should destroy theme_install" do
    assert_difference('ThemeInstall.count', -1) do
      delete theme_install_url(@theme_install)
    end

    assert_redirected_to theme_installs_url
  end
end
