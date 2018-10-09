class ScheduleController < ApplicationController
  def index
   @schedules = Schedule.all
  end
end
