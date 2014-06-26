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

class PropertyAttachment < ActiveRecord::Base
	mount_uploader :image, PropertyUploader
  belongs_to :property

  rails_admin do
    field :image, :carrierwave
  end
end
