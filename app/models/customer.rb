require 'pry'

class Customer < ActiveRecord::Base
    has_many :orders
    has_many :books, through: :orders

    def buy_book book
        if book.quantity > 0
            Order.create(customer_id: self.id, book_id: book.id)
            book.update(quantity: book.quantity - 1)
        else
            "NOT ENOUGH #{book.title} IN STOCK"
        end
    end


end