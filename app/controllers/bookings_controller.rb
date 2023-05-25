class BookingsController < ApplicationController
  def index
  end

  def show
  end

  def new
    flight_number = params[:flight_number]
    @flight = Flight.find_by(number: flight_number)
    if @flight.departure_date > DateTime.current.in_time_zone("UTC")
      @booking = Booking.new
    else
      redirect_to root_path
    end
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.code_pnr = helpers.generate_pnr_code
    @booking.user = current_user

    flight_number = params[:flight_number]
    @flight = Flight.find_by(number: flight_number)
    @booking.flights << @flight

    if booking_validation(@flight, @booking) && @booking.save
      ApplicationMailer.mailer(current_user.email, @flight, @booking).deliver_now
      redirect_to root_path, notice: "Booking created successfully", notice_status: 'success'
    else
      flash[:error] = @booking.errors.full_messages.join(", ")
      redirect_to bookings_new_path, flight_number: flight_number
    end
  end

  def booking_validation(flight, booking)
    class_type = booking.class_type
    class_type_seat_count = flight.bookings.where(class_type: class_type).sum(:passenger_number)
    available_seats = booking.economy? ? flight.economy_class_seats : flight.business_class_seats

    if class_type_seat_count + booking.passenger_number > available_seats
      booking.errors.add(:base, I18n.t('booking.errors.not_enough_seats'))
      return false
    end

    true
  end

  def booking_params
    params.require(:booking).permit(:class_type, :passenger_number)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
