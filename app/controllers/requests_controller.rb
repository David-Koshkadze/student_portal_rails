# app/controllers/requests_controller.rb
class RequestsController < ApplicationController
  before_action :authenticate_user! # Ensure users are authenticated

  def index
    @requests = current_user.requests
  end

  def show
    @request = current_user.requests.find(params[:id])
  end

  def new
    @request = current_user.requests.build
  end

  def create
    @request = current_user.requests.build(request_params)

    binding.irb

    if @request.save
      redirect_to @request, notice: 'Request was successfully created.'
    else
      render :new
    end
  end

  def edit
    @request = current_user.requests.find(params[:id])
  end

  def update
    @request = current_user.requests.find(params[:id])
    if @request.update(request_params)
      redirect_to @request, notice: 'Request was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @request = current_user.requests.find(params[:id])
    @request.destroy
    redirect_to requests_url, notice: 'Request was successfully destroyed.'
  end

  def get_lecturers
    subject = Subject.find(params[:subject_id])
    @lecturers = subject.lecturers
    render json: @lecturers
  end

  private

  def request_params
    params.require(:request).permit(:day_of_week, :subject_id, :lecturer_id, :start_time, :end_time)
  end
end
