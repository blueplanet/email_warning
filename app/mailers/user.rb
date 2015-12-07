class User < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user.sign.subject
  #
  def sign
    subject 'subject'
    from 'test@test.com'
    sent_on Time.current
    body email: 'aaa@test.com'
  end
end
