class Answer < ActiveRecord::Base
  validates :body, presence: true
  has_many :votes
  belongs_to :question
end
