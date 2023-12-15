class LecturersController < ApplicationController
  # before_action :authenticate_admin! # Only allow admin access

  def index
    @lecturers = Lecturer.all
  end

  def show
    @lecturer = Lecturer.find(params[:id])
  end

  def new
    @lecturer = Lecturer.new
  end

  def create
    @lecturer = Lecturer.new(lecturer_params)
    if @lecturer.save
      redirect_to @lecturer, notice: 'Lecturer was successfully created.'
    else
      render :new
    end
  end

  def edit
    @lecturer = Lecturer.find(params[:id])
  end

  def update
    @lecturer = Lecturer.find(params[:id])
    if @lecturer.update(lecturer_params)
      redirect_to @lecturer, notice: 'Lecturer was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @lecturer = Lecturer.find(params[:id])
    @lecturer.destroy
    redirect_to lecturers_url, notice: 'Lecturer was successfully destroyed.'
  end

  private

  def lecturer_params
    params.require(:lecturer).permit(:name, :hours, :subject_id)
  end
end