require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Say something to your coach"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Say!"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "saying I am going to work yields a good response from the coach" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Say!"

    assert_text "Great!"
  end

   test "asking a question will get a stupid question response from the coach" do
    visit ask_url
    fill_in "question", with: "Who am I?"
    click_on "Say!"
    assert_text "Silly question, get dressed and go to work!"
  end

  test "visiting /answer includes link back to ask page" do
    visit answer_url
    assert_selector "p", text: "Say something new"
  end

end

