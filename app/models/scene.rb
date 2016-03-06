class Scene < ActiveRecord::Base
  belongs_to :project
  has_many :characters
  accepts_nested_attributes_for :characters, reject_if: :all_blank, allow_destroy: true
end
