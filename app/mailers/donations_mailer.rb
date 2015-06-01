class DonationsMailer < ActionMailer::Base

  def donation_receipt(email, amount)
    @amount = amount

    mail(
      to: email,
      from: "info@andconf.io",
      bcc: "info@andconf.io",
      subject: "Thank you for your donation to &:conf!"
    )
  end
end
