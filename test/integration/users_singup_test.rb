require 'test_helper'

class UsersSingupTest < ActionDispatch::IntegrationTest

  test "valid signup data" do
    get signup_path
    assert_difference 'User.count' do
      post users_path, user: { name: "Tim", email: "tim@post.com",
                              password: "pass123", password_confirmation: "pass123"}
    end

    assert is_logged_in?
  end

  test "invalind signup data" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, user: { name: "Tim", email: "tom@",
              password: "abc", password_confirmation: ""}
    end
  end
end
