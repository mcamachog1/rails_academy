class PaymentByStudentsController < ApplicationController
  before_action :set_payment_by_student, only: %i[ show edit update destroy ]

  # GET /payment_by_students or /payment_by_students.json
  def index
    @payment_by_students = PaymentByStudent.all
  end

  # GET /payment_by_students/1 or /payment_by_students/1.json
  def show
  end

  # GET /payment_by_students/new
  def new
    @payment_by_student = PaymentByStudent.new
  end

  # GET /payment_by_students/1/edit
  def edit
  end

  # POST /payment_by_students or /payment_by_students.json
  def create
    @payment_by_student = PaymentByStudent.new(payment_by_student_params)

    respond_to do |format|
      if @payment_by_student.save
        format.html { redirect_to @payment_by_student, notice: "Payment by student was successfully created." }
        format.json { render :show, status: :created, location: @payment_by_student }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @payment_by_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_by_students/1 or /payment_by_students/1.json
  def update
    respond_to do |format|
      if @payment_by_student.update(payment_by_student_params)
        format.html { redirect_to @payment_by_student, notice: "Payment by student was successfully updated." }
        format.json { render :show, status: :ok, location: @payment_by_student }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @payment_by_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_by_students/1 or /payment_by_students/1.json
  def destroy
    @payment_by_student.destroy
    respond_to do |format|
      format.html { redirect_to payment_by_students_url, notice: "Payment by student was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_by_student
      @payment_by_student = PaymentByStudent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def payment_by_student_params
      params.require(:payment_by_student).permit(:student_id, :payment_id)
    end
end
