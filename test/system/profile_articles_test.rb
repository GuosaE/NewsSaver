require "application_system_test_case"

class ProfileArticlesTest < ApplicationSystemTestCase
  setup do
    @profile_article = profile_articles(:one)
  end

  test "visiting the index" do
    visit profile_articles_url
    assert_selector "h1", text: "Profile Articles"
  end

  test "creating a Profile article" do
    visit profile_articles_url
    click_on "New Profile Article"

    fill_in "Article", with: @profile_article.article_id
    fill_in "Profile", with: @profile_article.profile_id
    click_on "Create Profile article"

    assert_text "Profile article was successfully created"
    click_on "Back"
  end

  test "updating a Profile article" do
    visit profile_articles_url
    click_on "Edit", match: :first

    fill_in "Article", with: @profile_article.article_id
    fill_in "Profile", with: @profile_article.profile_id
    click_on "Update Profile article"

    assert_text "Profile article was successfully updated"
    click_on "Back"
  end

  test "destroying a Profile article" do
    visit profile_articles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profile article was successfully destroyed"
  end
end
