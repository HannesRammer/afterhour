class AfterHour < ApplicationRecord
  has_many :user_to_afterhours, -> { order "name asc" }
  has_many :users, :through => :user_to_afterhours

  has_many :mod_to_afterhours, -> { order "name asc" }
  has_many :mods, :through => :mod_to_afterhours

end
