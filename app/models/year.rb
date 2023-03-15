class Year < ApplicationRecord
    has_many :vehicles #, dependent: :destroy

    validates :manufacture, presence: true
   
end
