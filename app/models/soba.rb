class Soba < ApplicationRecord
  self.inheritance_column = :category
  validates :name, presence: true
end
