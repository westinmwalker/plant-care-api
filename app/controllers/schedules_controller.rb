class SchedulesController < ApplicationController
  before_action :authenticate_user

  def index
    @schedules = current_user.schedules
    render template: "schedules/index"
  end

  def show
    @schedule = current_user.schedules.find_by(id: params[:id])
    render :show
  end

  def create
    @schedule = Schedule.create(
      plant_id: params[:plant_id],
      user_id: params[:user_id],
      image_url: params[:image_url],
      watering_start_date: params[:watering_start_date],
    )
    render :show
  end
end
