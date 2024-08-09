# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'connect4.mailer@gmail.com'
  layout 'mailer'
end
