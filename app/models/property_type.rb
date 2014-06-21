# == Schema Information
#
# Table name: property_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class PropertyType < ActiveRecord::Base
	has_many :properties

	validates_uniqueness_of :name
  validates_presence_of :name

  rails_admin do
    configure :properties do
      visible false
    end
  end
end
