class CustomersController < ApplicationController
  def create
    Customer.create(name: params[:customer][:name])
    redirect_to dashboard_path
  end

  def show
    @customer = Customer.find params[:id]
    @comments = @customer.comments
    @comment = Comment.new
    
  end
end
