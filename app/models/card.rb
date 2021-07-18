class Card < ApplicationRecord
  has_many :card_books
  belongs_to :person
  belongs_to :library
end
