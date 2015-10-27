class Answer < ActiveRecord::Base
  validates :body, presence: true
  has_many :votes
  has_many :comments
  belongs_to :question
end
