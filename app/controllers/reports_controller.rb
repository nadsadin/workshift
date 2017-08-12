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

  def location_total
  end

  def location_detail
    @workshifts = WorkShift.where("start_time>=? and end_time<=?",@report.start_date,@report.end_date+1)
    @locations = Location.where id: @workshifts.select(:location_id).group(:location_id)
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
  params.require(:report).permit(:start_date, :end_date, :location)
end