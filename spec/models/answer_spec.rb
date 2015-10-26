require 'rails_helper'

describe Answer do
  it { should validate_presence_of :body }
  it { should have_many :votes }
end
