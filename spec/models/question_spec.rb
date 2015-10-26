require 'rails_helper'

describe Question do
  it { should have_many :answers }
  it { should have_many :comments }
end
