class Book < ApplicationRecord
  has_many :card_books
  belongs_to :author
end
