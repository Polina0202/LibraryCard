class CardBook < ApplicationRecord
  belongs_to :card
  belongs_to :book
end
