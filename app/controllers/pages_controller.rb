# app/controllers/pages_controller.rb

class PagesController < ApplicationController
  def home
    @welcome_message = ""
    # You can add more logic here if needed
  end

  def about
    @welcome_message = "About Us"
    # Additional logic for about page can be added here
  end
end
