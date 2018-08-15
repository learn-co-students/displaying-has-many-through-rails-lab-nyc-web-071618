class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show]

  def index
    @doctors = Doctor.all
  end

  private

    def set_doctor
      @doctor = Doctor.find_by_id(params[:id])
    end

end
