class Project < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_and_belongs_to_many :tags
  mount_uploader :cover_image, ImageUploader

  accepts_nested_attributes_for :tags, reject_if: :all_blank

  validates :title, :description, :story, presence: true
end
