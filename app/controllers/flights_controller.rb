class FlightsController < ApplicationController
  def index
    @flights = Flight.where('departure_date > ?', DateTime.current).order(:departure_date)
                     .paginate(page: params[:page], per_page: 10)
    ApplicationMailer.mailer('jamard.theo17@gmail.com').deliver_now
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
