class StaffSchedulesController < ApplicationController
  
  def new
    @staff_schedules = StaffSchedules.all
  end

  def index
    @staff_schedules = StaffSchedule.where(staffs_attr: "nr")
  end

　def create
    logger.debug("-------------------- name: #{params[:name]}, staffs_attr: #{params[:staffs_attr]}")
    @date_counter = 1
    @counter = 1
    @staff_schedule = Staff_schedule.new(staff_id: @staffs_id, work_date: "2018-10-@date_counter", work_time: "@counter", status: "0")

    if @staff_schedule.save
      flash[:notice] = "スタッフのスケジュールを登録しました"
      redirect_to("/staffs/#{@staff.id}")
    else
      render("/staffs/new")
    end

end
