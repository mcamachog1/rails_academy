class Student < ApplicationRecord
  belongs_to :parent
  #validates :name, :year, presence: true
end
