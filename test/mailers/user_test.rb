require 'test_helper'

class UserTest < ActionMailer::TestCase
  test "sign" do
    mail = User.sign
    assert_equal "Sign", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
