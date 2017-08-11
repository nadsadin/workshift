class ReportsController < ApplicationController
  before_action :set_report
  def index
  end

  def employee_total
    @report = Report.new(report_params)
    @employees = Employee.all
    @workshift = WorkShift.where("start_time>=? and end_time<=?",@report.start_date,@report.end_date).order(:employee_id)

  end

  def employee_detail
  end

  def location_total
  end

  def location_detail
  end
end


private

def convert_date(hash, date_symbol_or_string)
  attribute = date_symbol_or_string.to_s
  return Date.new(hash[attribute + '(1i)'].to_i, hash[attribute + '(2i)'].to_i, hash[attribute + '(3i)'].to_i)
end
def set_report
  @report = Report.new
end
def report_params
  params.require(:report).permit(:start_date, :end_date, :location)
end