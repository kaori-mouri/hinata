class StaffSchedulesController < ApplicationController
  
  def new
    @staffs = Staff.where(staffs_attr: "nr")
    # @staff_schedule = StaffSchedules.new
  end

  def index
    @staff_schedules = StaffSchedule.where(staffs_attr: "nr")
  end
  
  def create
        logger.debug("--------------------------きたよ ")

    2.times do |i|
      10.times do |j|
    logger.debug("--------------------------#{params[:staff_schedule[:i][:j]]} ")
      end
    end
  end
  
end
