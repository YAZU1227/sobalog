class Soba < ApplicationRecord
  self.inheritance_column = :category
  validates :name, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["name", "type", "hot_menu", "cold_menu", "side_menu", "alcohol_menu", "sobayu", "eating_with", "seat", "price"]
  end
end

