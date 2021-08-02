class OrderMailer < ApplicationMailer
  # add_template_helper('new_order_email')
  layout "room_send"
  default from: "mail@example.com"

  def room_send(room)
    @room = room
    mail(to: "chernaya.sofiia@gmail.com", subject: "The booking confirmation")
  end

  # def order_send(order, client)
  def order_send(order)
    @order = order
    # @client = client
    mail(to: "chernaya.sofiia@gmail.com", subject: "The booking confirmation")
  end

  def send_signup_email(user)
    # @order = params[:order]

    # @user = user
    # mail( :to => @user.email,
    #       :subject => 'Thanks for signing up for our amazing app' )
    mail( :to => 'chernaya.sofiia@gmail.com',
          :subject => 'Thanks for signing up for our amazing app' )
  end
end
