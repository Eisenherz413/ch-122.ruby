class UserMailer < ApplicationMailer
  def new_order_email
    @order = params[:order]
    @email = params[:email]
    mail(to: @email, subject: "You got a new order!")
  end
end
