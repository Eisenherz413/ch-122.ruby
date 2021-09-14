class UserMailer < ApplicationMailer
  def new_order_email
    @order = params[:order]
    mail(to: "chernaya.sofiia@gmail.com", subject: "You got a new order!")
  end
end
