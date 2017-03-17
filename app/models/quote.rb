class Quote < ApplicationRecord
    validates :saying, presence:true, length: { maximum: 250, minimum: 10 }
    validates :author, presence:true, length: { maximum: 35, minimum: 2 }
end
