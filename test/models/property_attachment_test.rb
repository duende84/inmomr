# == Schema Information
#
# Table name: property_attachments
#
#  id          :integer          not null, primary key
#  property_id :integer
#  image       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class PropertyAttachmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
