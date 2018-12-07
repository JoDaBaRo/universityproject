class PaymentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.payment_mailer.new_payment.subject
  #
  def new_payment(payment)
    @payment = payment
    mail to: payment, subject: "Comprobabante de pago autoescuela"
  end
end
