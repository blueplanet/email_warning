class User < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user.sign.subject
  #
  def sign
    @greeting = "Hi"

    part :content_type => "text/html",
      :body => render_message("send_email_html", :email => email)

    part "text/plain" do |p|
      p.body = render_message("send_email_plain", :email => email)
      p.transfer_encoding = "base64"
    end
  end
end
