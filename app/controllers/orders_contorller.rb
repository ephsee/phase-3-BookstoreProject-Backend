class OrderController < ApplicationController
    
    get '/orders' do 
        orders  = Order.all
        orders.to_json
    end

    post '/orders' do
        order = Order.create(customer_id:params[:customer_id], book_id:params[:book_id])
        order.to_json
    end

    get '/orders/:id' do
        order = Order.find(params[:id])
        order.to_json
    end

end