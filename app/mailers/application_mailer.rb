class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'order_mailer'
end
