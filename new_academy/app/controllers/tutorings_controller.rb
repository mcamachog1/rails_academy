# frozen_string_literal: true

# Tutoring Class
class TutoringsController < ApplicationController
  before_action :set_tutoring, only: %i[show edit update destroy]

  # GET /tutorings or /tutorings.json
  def index
    # sorted = Tutoring.all.sort_by {|t| t.date}
    # @tutorings = sorted.reverse
    student_id = params[:student_id]
    @students = Student.order(:name)
    @tutorings = if student_id.nil?
                   Tutoring.order(date: :desc, start: :asc)
                 else
                   Tutoring.where(student_id: student_id).order(date: :desc, start: :asc)
                 end
  end

  # GET /tutorings/1 or /tutorings/1.json
  def show; end

  # GET /tutorings/new
  def new
    @tutoring = Tutoring.new
    @students = Student.order(:name)
    @tutors = Tutor.order(:name)
  end

  # GET /tutorings/1/edit
  def edit
    @students = Student.all
    @tutors = Tutor.all
  end

  # POST /tutorings or /tutorings.json
  def create
    # @tutoring = Tutoring.create(student_id: params[:student_id], tutor_id: params[:tutor_id])
    @tutoring = Tutoring.new(tutoring_params)
    @tutoring.student_id = params[:student_id]
    @tutoring.tutor_id = params[:tutor_id]
    respond_to do |format|
      if @tutoring.save
        format.html { redirect_to @tutoring, notice: 'Tutoring was successfully created.' }
        format.json { render :show, status: :created, location: @tutoring }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tutoring.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tutorings/1 or /tutorings/1.json
  def update
    student_id = params[:student_id]
    tutor_id = params[:tutor_id]
    @tutoring.update(student_id: student_id, tutor_id: tutor_id)
    respond_to do |format|
      if @tutoring.update(tutoring_params)
        format.html { redirect_to @tutoring, notice: 'Tutoring was successfully updated.' }
        format.json { render :show, status: :ok, location: @tutoring }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tutoring.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutorings/1 or /tutorings/1.json
  def destroy
    @tutoring.destroy
    respond_to do |format|
      format.html { redirect_to tutorings_url, notice: 'Tutoring was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_tutoring
    @tutoring = Tutoring.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def tutoring_params
    params.require(:tutoring).permit(:date, :start, :end, :tutor_id, :student_id)
  end
end
