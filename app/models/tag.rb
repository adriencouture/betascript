class Tag < ActiveRecord::Base
  has_and_belongs_to_many :projects

  # Hypothesis logic for how a string of words "travel france wine food" needs
  # to be manipulated in order to be saved to the database as:
  # "travel", "france", "wine", "food" in the tags model, each with its own ID.

  def separate_tags(tag_list)
    @tag_array = tag_list.split(" ")
    @tag_array.each do |tag|
      tag.capitalize
    end
  end
end
