class Review < ApplicationRecord
    validates :content, presence: true
    validates :rating,  inclusion: { in: [0,1, 2, 3, 4, 5] }, numericality: {only_integer: true}
    belongs_to :restaurant

end



# #A review must have a parent restaurant.
# A review must have content and a rating. The rating should be a number between 0 and 5.
# When a restaurant is destroyed, all of its reviews should be destroyed as well.