require 'test_helper'

class UserSignupTest < ActionDispatch::IntegrationTest
  
  test 'invalid signup information' do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name: "a",
                                         email: "invalid@email" } }
    end
    assert_template 'users/new'
    assert_select 'div#error_explanation'
  end
  
  test 'valid signup information' do
    get signup_path
    assert_difference 'User.count', +1 do
      post users_path, params: { user: { name: "User",
                                         email: "example@email.com" } }
    end
    follow_redirect!
    assert_template 'users/show'
  end
  
end
