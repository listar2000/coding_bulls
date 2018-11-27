class Post < ApplicationRecord
    has_one_attached :image
    belongs_to :category, optional: true
    belongs_to :user, optional: true
    has_many :adds
    has_many :users_added, through: :adds, source: :user
end
