class Message < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message.hello.subject
  #
  def hello
    @greeting = "Hi"

    mail to: "to@example.org"

    # part content_type: 'text/html', body: render_message('hello')
    # part 'text/plain' do |p|
    #   p.body = render_message('hello')
    # end
  end
end
