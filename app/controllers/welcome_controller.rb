class WelcomeController < ApplicationController
  def index
    event_guest = EventGuest.new()

    respond_to do |format|
      format.html
    end
  end

  def subscribe
    event_guest = EventGuest.create(event_guest_params)

    respond_to do |format|
      format.html{ render :index }
    end
  end

  private

  # StrongParams function to sanitize the input
  def event_guest_params
    return params.require(:event_guest).permit(:name, :email)
  end
end
