class CustomerController < ApplicationController
    
    get '/customers' do 
        customers = Customer.all
        customers.to_json
    end

    get '/customers/:id' do
        customer = Customer.find(params[:id])
        customer.to_json
    end

end