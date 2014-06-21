# == Schema Information
#
# Table name: neighborhoods
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  commune    :string(255)
#  city_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Neighborhood < ActiveRecord::Base
	belongs_to :city
	belongs_to :property

  validates_presence_of :name
end
