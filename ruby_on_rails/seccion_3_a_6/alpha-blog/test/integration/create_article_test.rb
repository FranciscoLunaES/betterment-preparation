require 'test_helper'

class CreateArticleTest < ActionDispatch::IntegrationTest
  setup do
    @admin_user = User.create(username: 'johndoe', email: 'johndoe@example.com', password: 'password', admin: true)
    sign_in_as(@admin_user)
  end

  test 'get new article form and create article' do
    get '/articles/new'
    assert_response :success
    assert_difference 'Article.count', 1 do
      post articles_path, params: { article: { title: 'This pass validation', description: 'Description will pass',
                                               user_id: @admin_user.id } }
      assert_response :redirect
    end
    follow_redirect!
    assert_response :success
    assert_match 'This pass validation', response.body
  end

  test 'get new article form and reject invalid article submission' do
    get '/articles/new'
    assert_response :success
    assert_no_difference 'Article.count' do
      post articles_path, params: { article: { title: '', description: '',
                                               user_id: @admin_user.id } }
    end
    assert_match 'errors', response.body
    assert_select 'div.alert'
    assert_select 'h4.alert-heading'
  end
end
