class Character < ActiveRecord::Base
  belongs_to :script
  belongs_to :scene 
end
