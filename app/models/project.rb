class Project < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_and_belongs_to_many :tags

  validates :title, :description, :story, presence: true
end
