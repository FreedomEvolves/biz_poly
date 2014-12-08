class Interaction < ActiveRecord::Base
  belongs_to :interaction, polymorphic: true
end
