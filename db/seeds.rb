# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')

# book_id: nil, category_id: nil, created_at: nil, updated_at: nil
rob = Reader.create(name: 'Rob', email: 'sweet.com', phone: '123456789')
book = Book.create(title: 'Best Book', author: 'Randy', rating: 100)
checkout = Checkout.create(reader: rob, book: book)
category = Category.create(name: 'Sci Fi')
categorization = Categorization.create(book: book, category: category)
