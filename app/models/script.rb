class Script < ActiveRecord::Base
  belongs_to :project
  has_many :characters
  has_many :scenes
  
end
