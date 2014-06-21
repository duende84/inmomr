# == Schema Information
#
# Table name: properties
#
#  id               :integer          not null, primary key
#  owner_id         :integer
#  property_type_id :integer
#  category         :string(255)
#  state            :string(255)
#  address          :string(255)
#  neighborhood_id  :integer
#  price            :integer
#  stratum          :integer
#  description      :text
#  ads              :boolean
#  created_at       :datetime
#  updated_at       :datetime
#

require 'test_helper'

class PropertyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
