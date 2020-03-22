require "application_system_test_case"

class JournalsTest < ApplicationSystemTestCase
  setup do
    @journal = journals(:one)
  end

  test "visiting the index" do
    visit journals_url
    assert_selector "h1", text: "Journals"
  end

  test "creating a Journal" do
    visit journals_url
    click_on "New Journal"

    fill_in "Body", with: @journal.body
    fill_in "How", with: @journal.how
    fill_in "Title", with: @journal.title
    fill_in "What", with: @journal.what
    fill_in "When", with: @journal.when
    fill_in "Where", with: @journal.where
    fill_in "Who", with: @journal.who
    fill_in "Why", with: @journal.why
    click_on "Create Journal"

    assert_text "Journal was successfully created"
    click_on "Back"
  end

  test "updating a Journal" do
    visit journals_url
    click_on "Edit", match: :first

    fill_in "Body", with: @journal.body
    fill_in "How", with: @journal.how
    fill_in "Title", with: @journal.title
    fill_in "What", with: @journal.what
    fill_in "When", with: @journal.when
    fill_in "Where", with: @journal.where
    fill_in "Who", with: @journal.who
    fill_in "Why", with: @journal.why
    click_on "Update Journal"

    assert_text "Journal was successfully updated"
    click_on "Back"
  end

  test "destroying a Journal" do
    visit journals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Journal was successfully destroyed"
  end
end
