class ReaderBook < ApplicationRecord
  belongs_to :reader
  belongs_to :book
end
