class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  # Bookmark comment cannot be shorter than 6 characters
  validates :comment, length: { minimum: 6, maximum: 70 }

  # validation movie and list can't be blank
  validates :movie_id, uniqueness: { scope: :list_id, message: 'is already in the list' }
end
