require 'test_helper'
require 'application_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", about_path, count: 2
    assert_select "a[href=?]", contact_path, count: 2
  end

  test "layout title" do
    get signup_path
    assert_template 'users/new'
    assert_select "title", full_title("Sign up")
  end
end