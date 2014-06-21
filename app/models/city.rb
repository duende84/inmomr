# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class City < ActiveRecord::Base
	has_many :neighborhoods

	validates_uniqueness_of :name
  validates_presence_of :name

  rails_admin do
    configure :neighborhoods do
      visible false
    end
  end
end
