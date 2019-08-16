class Joke < ApplicationRecord
  validates :joke, presence: true, length: { maximum: 255, minimum: 1 }
end
