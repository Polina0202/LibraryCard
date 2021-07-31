module AuthorsHelper
  def list_books(author)
    result = ''
    author.books.each do |book|
      result += "#{book.title}<br>"
    end
    result
  end

  def gender_str(gender)
    gender == 0 ?  "Женский" : "Мужской"
  end

  def active_str(active)
    active ? "Активен" : "Неактивен"
  end

end
