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

class Property < ActiveRecord::Base
	belongs_to :owner
	belongs_to :property_type
	belongs_to :neighborhood

	validates_numericality_of :price, greater_than: 0, :allow_nil => true
	validates_numericality_of :stratum, greater_than: 0, :allow_nil => true
	validates_numericality_of :stratum, less_than_or_equal_to: 6, :allow_nil => true

  CATEGORIES = %w[Venta Arrendamiento]

  def category_enum
    CATEGORIES
  end

  STATES = %w[Activo Inactivo]

  def state_enum
    STATES
  end

  STRATUMS = %w[1 2 3 4 5 6]

  def stratum_enum
    STRATUMS
  end

  rails_admin do
    configure :category, :enum do
      enum_method do
        :category_enum
      end
    end

    configure :state, :enum do
      enum_method do
        :state_enum
      end
    end

    configure :stratum, :enum do
      enum_method do
        :stratum_enum
      end
    end
  end
end
