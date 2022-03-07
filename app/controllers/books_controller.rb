class BookController < ApplicationController
    
    get '/books' do
        books = Book.all
        books.to_json
    end
    

end