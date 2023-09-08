class SchedulesController < ApplicationController
  require "date"
  before_action :authenticate_user

  def create
    d = DateTime.now
    @schedule = Schedule.create(
      plant_id: params[:plant_id],
      user_id: current_user.id,
      image_url: params[:image_url],
      watering_start_date: d.strftime("%F %R"),
    )

    render :show
  end

  def index
    @schedules = current_user.schedules
    render template: "schedules/index"
  end

  def show
    @schedule = current_user.schedules.find_by(id: params[:id])
    render :show
  end
end
