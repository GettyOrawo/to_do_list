require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup info" do
    get signup_path
    assert_no_difference 'User.count' do
    post users_path, params:{user:{name: "",
                          email: "g@lll",
                          password: "oil",
                          password_confirmation: "iol"}}
  end
  assert_template 'users/new'
 end
   test "valid signup info" do
    get signup_path
    assert_difference 'User.count', 1 do
    post_via_redirect users_path, params:{user:{name: "getty",
                          email: "gett@lll.com",
                          password: "oilil",
                          password_confirmation: "oilil"}}
  end
  assert_template 'users/show'
 end

  end
