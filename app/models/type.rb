class Type < ApplicationRecord
    has_many :vehicles #,dependent: :destroy
   
    validates :wheel, presence: true
    validates :fuel, presence: true

    
end
