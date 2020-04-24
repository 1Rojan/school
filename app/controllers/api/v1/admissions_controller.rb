class Api::V1::AdmissionsController < ApplicationController

  def index
    @admissions = Admission.all
    render json: @admissions
  end

  def show
    @find_admission = Admission.find(params[:id])
    render json: @find_admission
  end
end
