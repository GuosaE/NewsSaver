require 'test_helper'

class ProfileArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile_article = profile_articles(:one)
  end

  test "should get index" do
    get profile_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_article_url
    assert_response :success
  end

  test "should create profile_article" do
    assert_difference('ProfileArticle.count') do
      post profile_articles_url, params: { profile_article: { article_id: @profile_article.article_id, profile_id: @profile_article.profile_id } }
    end

    assert_redirected_to profile_article_url(ProfileArticle.last)
  end

  test "should show profile_article" do
    get profile_article_url(@profile_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_article_url(@profile_article)
    assert_response :success
  end

  test "should update profile_article" do
    patch profile_article_url(@profile_article), params: { profile_article: { article_id: @profile_article.article_id, profile_id: @profile_article.profile_id } }
    assert_redirected_to profile_article_url(@profile_article)
  end

  test "should destroy profile_article" do
    assert_difference('ProfileArticle.count', -1) do
      delete profile_article_url(@profile_article)
    end

    assert_redirected_to profile_articles_url
  end
end
