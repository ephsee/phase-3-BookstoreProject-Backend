require 'pry'

class Customer < ActiveRecord::Base
    has_many :orders
    has_many :books, through: :orders

    def buy_book book
        Order.create(customer_id: self.id, book_id: book.id)
        book.update(quantity: book.quantity - 1)
    end


end