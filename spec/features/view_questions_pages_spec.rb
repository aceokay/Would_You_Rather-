require 'rails_helper'

describe 'the questions path' do
  before do
    @answer_1 = FactoryGirl.create(:answer_1)
    @answer_2 = FactoryGirl.create(:answer_2)
  end

  it 'shows all questions' do
    visit answers_path
    expect(page).to have_content @answer_1.body
    expect(page).to have_content @answer_2.body
  end
end
