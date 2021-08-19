class Card < ApplicationRecord
  belongs_to :reader
  belongs_to :library
end
