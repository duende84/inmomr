# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  username               :string(255)
#  role                   :string(255)
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_uniqueness_of :username, :email
  validates_presence_of :username, :email, :role

  ROLES = %w[admin author]

  def role?(base_role)
    ROLES.index(base_role.to_s) <= ROLES.index(role)
  end

  def role_enum
    ROLES
  end

  rails_admin do

    configure :role, :enum do
      enum_method do
        :role_enum
      end
    end

    configure :reset_password_sent_at do
      visible false
    end

    configure :remember_created_at do
      visible false
    end

    configure :sign_in_count do
      read_only true
    end

    configure :last_sign_in_ip do
      read_only true
    end

    configure :current_sign_in_ip do
      read_only true
    end

    configure :current_sign_in_at do
      read_only true
    end

    configure :last_sign_in_at do
      read_only true
    end
  end
end
