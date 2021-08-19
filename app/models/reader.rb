class Reader < ApplicationRecord
  has_one :card

  after_create :create_card

  def create_card
    card = self.build_card
    card.library_id = Library.last.id
    card.save
  end

  def all_book

    CardBook.all.each do |cardBookAll|
      cardBookAll
    end
    #{}"\"#{Book.find(CardBook.find_by(card_id: self.card).book_id).title}\""
  end

end
