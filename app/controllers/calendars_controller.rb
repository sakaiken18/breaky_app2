class CalendarsController < ApplicationController
  before_action :set_calendar, only: [:show, :destroy, :edit, :update]
  
  def index
    @calendars = Calendar.all
    @calendar = Calendar.new
  end

  def new
    @calendar = Calendar.new
  end

  def show
  end

  def create
    Calendar.create(calendar_params)
    redirect_to calendar_path
  end

  def destroy
    @calendar.destroy!
    redirect_to calendar_path, notice: "削除しました"
  end

  def edit
  end

  def update
    @calendar.update(calendar_params)
    if @blog.update(calendar_params)
      redirect_to calendars_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  private

  def set_calendar
    @calendar = Calendar.find(params[:id])
  end

  def calendar_params
    params.require(:calendar).permit(:title, :image, :content, :start_time)
  end
end
