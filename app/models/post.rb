class Post < ApplicationRecord
    has_one_attached :image
    belongs_to :category, optional: true
    belongs_to :user, optional: true
<<<<<<< HEAD
    has_many :adds
    has_many :users_added, through: :adds, source: :user
=======
    
>>>>>>> 796c2cead5d682b9e2018a8381c4343e0ffa5b5f
end
