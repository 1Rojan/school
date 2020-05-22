class Api::V1::AdmissionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :string_date

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
        dob: @date,
        gender: params[:gender],
        address: params[:address],
        phone: params[:phone],
        email: params[:email],
        father_name: params[:father_name],
        father_phone: params[:father_phone],
        mother_name: params[:mother_name],
        mother_phone: params[:mother_phone],
        admission_for: params[:admission_for],
        image: params[:image]
    )
    respond_to do |format|
      if @admission.save
        format.json { render :show, status: :created, location: @admission }
      else
        format.json { render json: @admission.errors, status: :unprocessable_entity }
      end
    end
  end

  private


  def string_date
      @date = params[:dob].to_date
  end
end
