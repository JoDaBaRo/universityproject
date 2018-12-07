# Preview all emails at http://localhost:3000/rails/mailers/payment_mailer
class PaymentMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/payment_mailer/new_payment
  def new_payment
    PaymentMailer.new_payment
  end

end
