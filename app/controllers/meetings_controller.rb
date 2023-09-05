class MeetingsController < ApplicationController
  before_action

  # GET /meetings or /meetings.json
  def index
    @meetings = Meeting.all
    @meeting = Meeting.new
  end

  # GET /meetings/1 or /meetings/1.json
  def show
    @meeting = Meeting.find(params[:id])
  end

  # GET /meetings/new
  def new
    @meeting = Meeting.new
  end

  # GET /meetings/1/edit
  def edit
    @meeting = Meeting.find(params[:id])
  end

  # POST /meetings or /meetings.json
  def create
    @meeting = Meeting.new(meeting_params)
    if @meeting.save
      redirect_to meetings_path, notice: "スケジュールを追加しました"
    else
      render 'index'
    end  
  end

  # PATCH/PUT /meetings/1 or /meetings/1.json
  def update
    @meeting = Meeting.find(params[:id])
    if @meeting.update(meeting_params)
      redirect_to meetings_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  # DELETE /meetings/1 or /meetings/1.json
  def destroy
    @meeting = Meeting.find(params[:id])
    @meeting.destroy
    redirect_to meetings_path, notice: "削除しました"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    
    # Only allow a list of trusted parameters through.
    def meeting_params
      params.require(:meeting).permit(:name, :content, :start_time)
    end
end
