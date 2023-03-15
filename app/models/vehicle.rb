class Vehicle < ApplicationRecord
     belongs_to :type
     belongs_to :year

     validates :name, presence: true
     validates :color, presence: true
     validates :model, presence: true

     validates :type_id, presence: true
     validates :year_id , presence: true
end
