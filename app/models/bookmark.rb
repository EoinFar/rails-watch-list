class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie_id, uniqueness: { scope: :list_id, message: 'This was already added' }
  validates :comment, length: { minimum: 6 }
end
