class Restaurant < ApplicationRecord
  # Ensuring that when a restaurant is deleted, all of its reviews are also deleted: (using the dependent key)
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], message: "Please enter one of the following cuisines: chinese, italian, japanese, french or belgian"}, presence: true
end
