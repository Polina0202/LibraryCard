class Reader < ApplicationRecord
  has_one :card

  has_many :reader_books, inverse_of: :reader
  accepts_nested_attributes_for :reader_books, reject_if: :all_blank, allow_destroy: true
  has_many :books, through: :reader_books

  after_create :create_card

  def create_card
    card = self.build_card
    card.library = Library.last
    card.save
  end
  
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
