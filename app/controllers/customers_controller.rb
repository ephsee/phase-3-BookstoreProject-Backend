class CustomerController < ApplicationController
    
    get '/customers' do 
        customers = Customer.all
        customers.to_json
    end

    post '/customers' do
        customer = Customer.create(name:params[:name], email:params[:email], address:params[:address])
        customer.to_json
    end

    get '/customers/:id' do
        customer = Customer.find(params[:id])
        customer.to_json
    end

    get '/customers/:id/orders' do
        customers = Customer.find(params[:id]).orders
        customers.to_json
    end

    get '/customers/:id/books' do
        customers = Customer.find(params[:id]).books
        customers.to_json
    end

    delete '/customers/:id' do 
        customer = Customer.find(params[:id])
        customer.delete
        customer.to_json
    end

    patch '/customers/:id' do
        customer = Customer.find(params[:id])
        customer.delete
        customer.to_json
    end

end