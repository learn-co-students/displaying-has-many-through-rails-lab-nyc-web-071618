class AppointmentsController < ApplicationController
  before_action :set_appointment, only: :show

  def patient_name
    self.patient.name
  end

  def doctor_path
    self.doctor.name
  end

  private

    def set_appointment
      @appointment = Appointment.find_by_id(params[:id])
    end

end
