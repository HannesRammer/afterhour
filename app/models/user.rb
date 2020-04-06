class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :user_to_afterhours, -> { order "name asc" }
  has_many :after_hours, :through => :user_to_afterhours


end
