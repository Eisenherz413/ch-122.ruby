class UserMailer < ApplicationMailer
  def new_order_email
    @order = params[:order]
    @email = params[:email]

    timeDiff = (@order.check_out - @order.check_in).abs
    @numberOfNights = (timeDiff / (1000 * 3600 * 24)).ceil

      mail(to: @email, subject: "You got a new order!")
  end
end
