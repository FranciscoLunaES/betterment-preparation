require 'test_helper'

class ListArticlesTest < ActionDispatch::IntegrationTest
  def setup
    @admin_user = User.create(username: 'johndoe', email: 'johndoe@example.com', password: 'password', admin: true)

    @article = Article.create(title: 'This pass validation', description: 'Description will pass',
                              user_id: @admin_user.id)
    @article2 = Article.create(title: 'This pass validation2', description: 'Description will pass2',
                               user_id: @admin_user.id)
  end

  test 'should show article listing' do
    get '/articles'
    assert_select 'a[href=?]', article_path(@article), text: @article.title
    assert_select 'a[href=?]', article_path(@article2), text: @article2.title
  end
end
