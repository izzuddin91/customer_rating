class RatingsController < ApplicationController

  def dashboard
    @user = current_user.username
    @customers = Customer.all
    @customer = Customer.new
  end

  def search
    result = params[:result]
    @customer = Customer.find_by(name: result)
    if !@customer.blank?
      @comments = @customer.comments
      @comment = Comment.new
    else
      @customer == ""
    end
    render 'customers/show'
  end


  def autocomplete_result
    @shipper = []
    shipper = Customer.all
    shipper.each do |x|
      @shipper << x.name 
  # @shipper.flatten.reject{|x| x == ""}.uniq!
  # reject any duplicates
  # @shipper & @shipper
end
number = params[:term].length - 1
@back = []
@shipper.each do |x|
  if x[0..(number)].downcase == params[:term].downcase
    @back << x
  end
end
render json: @back
end

def approve
  a = params["user_ids"]
  b = User.find_by(id: a)
  b.update(pending_approval: true)
  redirect_to dashboard_path
end

end



  