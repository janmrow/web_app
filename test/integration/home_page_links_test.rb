require 'test_helper'

class HomePageLinksTest < ActionDispatch::IntegrationTest

  test "home page links" do
    get root_path
    assert_template 'pages/home'
    assert_select 'a[href=?]', root_path
    assert_select 'a[href=?]', about_path
    assert_select 'a[href=?]', blog_path
    assert_select 'a[href=?]', contact_path
  end
end
