class Post < ApplicationRecord
    belongs_to :blogger 
    belongs_to :destination

    validates :title, presence: true, uniqueness: true 
    validates :content, presence: true
    validates_length_of :content, minimum: 100
    
end
