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

require 'test_helper'

class OwnerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
