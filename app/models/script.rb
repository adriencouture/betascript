class Script < ActiveRecord::Base
  belongs_to :project
  has_many :characters
  has_many :scenes
  accepts_nested_attributes_for :scenes, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :characters, reject_if: :all_blank, allow_destroy: true

end
