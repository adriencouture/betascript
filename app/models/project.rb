class Project < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :title, :description, :story, presence: true
end
