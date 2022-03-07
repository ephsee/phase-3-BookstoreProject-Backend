class BookController < ApplicationController
    
    get '/books' do
        books = Book.all
        books.to_json
    end

    post '/books' do
        book = Book.create(title:params[:title], author:params[:author], publisher:params[:publisher], genre:params[:genre], quantity:params[:quantity])
        book.to_json
    end

    get '/books/:id' do
        book = Book.find(params[:id])
        book.to_json
    end

    get '/books/:id/customers' do
        book = Book.find(params[:id]).customers
        book.to_json
    end

    get '/books/:id/orders' do
        book = Book.find(params[:id]).orders
        book.to_json
    end

end