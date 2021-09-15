require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "new order email" do
    order = orders(:one)

    email = UserMailer.with(order: order).new_order_email

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal "rubygem.hotel@gmail.com", email.from
    assert_equal "You got a new order!", email.subject
    assert_match order.check_in, email.html_part.body.encoded
    assert_match order.check_in, email.text_part.body.encoded
    assert_match order.check_out, email.html_part.body.encoded
    assert_match order.check_out, email.text_part.body.encoded
    assert_match order.total_price, email.html_part.body.encoded
    assert_match order.total_price, email.text_part.body.encoded
  end
end