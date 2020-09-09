class AppointmentsController < ApplicationController
    def show
        @appointment = Appointment.find_by_id(params[:id])
    end

    def index
        not_found
    end

    def not_found
        raise ActionController::RoutingError.new('Not Found')
    end
end
