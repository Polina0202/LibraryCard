class Card < ApplicationRecord
  has_many :card_books
  belongs_to :reader
  belongs_to :library
end
