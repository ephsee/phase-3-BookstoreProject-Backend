class OrderController < ApplicationController
    
    get '/orders' do 
        orders  = Order.all
        orders.to_json
    end

    post '/orders' do
        order = Order.create(customer_id:params[:customer_id], book_id:params[:book_id])
        book = Book.find(params[:book_id])
        book.update(quantity: (b.quantity - 1))
        order.to_json
    end

    get '/orders/:id' do
        order = Order.find(params[:id])
        order.to_json
    end

    get '/orders/:id/customer' do
        order = Order.find(params[:id]).customer
        order.to_json
    end

    get '/orders/:id/book' do
        order = Order.find(params[:id]).book
        order.to_json
    end

    delete '/orders/:id' do 
        order = Order.find(params[:id])
        order.delete
        order.to_json
    end

    patch '/order/:id' do
        order = Order.find(params[:id])
        order.delete
        order.to_json
    end

end