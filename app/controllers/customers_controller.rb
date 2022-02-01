class CustomersController < ApplicationController
def index
    @customer = Customer.new
end

def create
    @customer = Customer.new(customer_params)
    if @customer.save
        cookies[:saved_lead] = true
        redirect_to customers_path, notice: "Saved Successfully!"
    else
        redirect_to customers_path, notice: "Failed to save!"    
    end
end

private

def customer_params
    params.require(:customer).permit(:first_name, :last_name, :email, :your_business, :looking_for)
end
end
