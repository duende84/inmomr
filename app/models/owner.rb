# == Schema Information
#
# Table name: owners
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  phone      :float
#  cellphone  :float
#  address    :string(255)
#  email      :string(255)
#  web_page   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Owner < ActiveRecord::Base
	has_many :properties

	validates_uniqueness_of :name
  validates_presence_of :name

  rails_admin do
    configure :properties do
      visible false
    end
  end
end
