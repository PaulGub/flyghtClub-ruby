class BookingsController < ApplicationController
  def index
  end

  def show
  end

  def new
    flight_number = params[:flight_number]
    @flight = Flight.find_by(number: flight_number)
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
