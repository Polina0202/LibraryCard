class Book < ApplicationRecord
  has_many :card_books
  belongs_to :author

  def full_title
    "\"#{self.title}\" #{Author.find(self.author_id).full_name}"
  end
end
