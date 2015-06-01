class DonationsController < ApplicationController
  def show
  end

  def create
    customer = Stripe::Customer.create(
      card: params[:token],
      email: params[:stripe_email]
    )

    donation_in_cents = params["donation_amount"].to_i * 100

    Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => donation_in_cents,
      :currency    => 'usd'
    )

    DonationsMailer.donation_receipt(params[:stripe_email], params["donation_amount"]).deliver
    flash[:message] = "Thank you so much for your donation!"
    redirect_to donations_path

  rescue Stripe::CardError, Stripe::StripeError => e
    flash[:error] = e.message
    redirect_to donations_path
  end
end
