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

require 'test_helper'

class NeighborhoodTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
