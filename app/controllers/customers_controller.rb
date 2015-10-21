class CustomersController < ApplicationController
  
  def create
    @customer = Customer.find_or_create_by(name: params[:customer][:name])
    @comments = @customer.comments
    @comment = Comment.new
    render 'show'
  end

  def show
    @customer = Customer.find params[:id]
    @comments = @customer.comments
    @comment = Comment.new
    
  end
end
