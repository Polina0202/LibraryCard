class Book < ApplicationRecord
  belongs_to :author

  has_many :reader_books, inverse_of: :book
  accepts_nested_attributes_for :reader_books, reject_if: :all_blank, allow_destroy: true
  has_many :readers, through: :reader_books

  def full_title
    "\"#{self.title}\" #{Author.find(self.author_id).full_name}"
  end
end
