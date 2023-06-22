class FlightsController < ApplicationController
  def index
    @flights = Flight.where('departure_date > ?', DateTime.current.in_time_zone("UTC")).order(:departure_date)
                     .paginate(page: params[:page], per_page: 10)
    @flights.each do |flight|
      economy_seats_booked = flight.bookings.where(class_type: 'economy').sum(:passenger_number)
      business_seats_booked = flight.bookings.where(class_type: 'business').sum(:passenger_number)

      flight.economy_available_seats = flight.economy_class_seats - economy_seats_booked
      flight.business_available_seats = flight.business_class_seats - business_seats_booked
    end
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
