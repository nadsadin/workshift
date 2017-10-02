class ReportsController < ApplicationController
  before_action :set_report, only: [:index]
  before_action :set_report_by_params, except:[:index]
  def index
  end

  def employee_total
    @workshifts = WorkShift.where("start_time>=? and start_time<=?",@report.start_date,@report.end_date+1)
    @employees = Employee.where id: @workshifts.select(:employee_id).group(:employee_id)
    @total = WorkShift.where("start_time>=? and start_time<=?",@report.start_date,@report.end_date+1).sum("cost")+Expense.where("date>=? and date<=?",@report.start_date,@report.end_date).sum("amount")

  end

  def employee_detail
    @workshifts = WorkShift.where("start_time>=? and end_time<=?",@report.start_date,@report.end_date+1)
    @employees = Employee.where id: @workshifts.select(:employee_id).group(:employee_id)
    @expenses = Expense.where("date>=? and date<=?",@report.start_date,@report.end_date)

  end
  def employee_detail_memo
    @workshifts = WorkShift.where("start_time>=? and end_time<=?",@report.start_date,@report.end_date+1)
    @employees = Employee.where id: @workshifts.select(:employee_id).group(:employee_id)
    @expenses = Expense.where("date>=? and date<=?",@report.start_date,@report.end_date)

  end

  def employee_id_detail
    @workshifts = WorkShift.where("start_time>=? and end_time<=? and employee_id=?",@report.start_date,@report.end_date+1,@report.employee_id).order(:start_time)
    @employee = Employee.find(@report.employee_id)
    @expenses = Expense.where("date>=? and date<=? and employee_id=?",@report.start_date,@report.end_date,@report.employee_id).order(:date)
  end

  def location_total
  end

  def location_detail
    @workshifts = WorkShift.where("start_time>=? and end_time<=?",@report.start_date,@report.end_date+1)
    @locations = Location.where id: @workshifts.select(:location_id).group(:location_id)
  end
  def location_id_detail
    @location = Location.find(@report.location_id)
    @workshifts = WorkShift.where("start_time>=? and end_time<=? and location_id=?",@report.start_date,@report.end_date+1,@report.location_id).order(:start_time)
  end
  def location_em_detail
    @location = Location.find(@report.location_id)
    @workshifts = WorkShift.where("start_time>=? and end_time<=? and location_id=?",@report.start_date,@report.end_date+1,@report.location_id)
    @employees = Employee.where id: @workshifts.select(:employee_id).group(:employee_id)
  end

end


private

def set_report
  @report = Report.new
end
def set_report_by_params
  @report = Report.new(report_params)
end
def report_params
  params.require(:report).permit(:start_date, :end_date, :location_id, :employee_id)
end