# frozen_string_literal: true.
# Static Page Controller
class StaticPagesController < ApplicationController
  def landing_page
    byebug
    @products = Product.limit(3)
  end

  def index; end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end
end
