class CommentsController < ApplicationController
  def create
    @customer = Customer.find(params[:customer_id])
    @customer.comments.create(comment_params)
    redirect_to @customer
  end

  private
    def comment_params
      params.require(:comment).permit(:overdue_since, :amount, :lodged_by, :remarks, :types_of_lorry, :location)
    end
end