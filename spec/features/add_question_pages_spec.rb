require 'rails_helper'

describe 'the answers path' do

  it 'can add a new question', js: true do
    visit questions_path
    click_on 'Add New Question'
    fill_in 'question_answers_attributes_0_body', with: "Run the world?"
    fill_in 'question_answers_attributes_1_body', with: "Run the student union?"
    click_on 'Submit'
    expect(page).to have_content "Run the world?"
    expect(page).to have_content "Run the student union?"
  end

  it 'cannot add a new question without options', js: true do
    visit questions_path
    click_on 'Add New Question'
    fill_in 'question_answers_attributes_0_body', with: ""
    fill_in 'question_answers_attributes_1_body', with: "Run the student union?"
    click_on 'Submit'
    expect(page).to have_content "supply text"
  end
end
