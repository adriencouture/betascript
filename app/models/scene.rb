class Scene < ActiveRecord::Base
  belongs_to :project
  has_and_belongs_to_many :characters

  validates :heading, :action, presence: true
  accepts_nested_attributes_for :characters, reject_if: :all_blank, allow_destroy: true
end
