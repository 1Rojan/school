class Api::V1::AdmissionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @admissions = Admission.all
    render json: @admissions
  end

  def show
    @find_admission = Admission.find(params[:id])
    render json: @find_admission
  end

  def create
    @admission = Admission.new

    @admission = Admission.create(
        name: params[:name],
        dob: params[:dob],
        gender: params[:gender],
        address: params[:address],
        phone: params[:phone],
        email: params[:email],
        father_name: params[:father_name],
        mother_name: params[:mother_name],
        mother_phone: params[:mother_phone],
        admission_for: params[:admission_for],
        image: params[:image]
    )
    if @admission.persisted?
      render json: 'ok'
    end
  end
end
