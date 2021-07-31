class Author < ApplicationRecord
  has_many :books

  enum gender: [:female, :male]

  def full_name
    "#{self.last_name} #{self.first_name}"
  end

end
