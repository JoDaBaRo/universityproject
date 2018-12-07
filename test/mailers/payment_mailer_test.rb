require 'test_helper'

class PaymentMailerTest < ActionMailer::TestCase
  test "new_payment" do
    mail = PaymentMailer.new_payment
    assert_equal "New payment", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
