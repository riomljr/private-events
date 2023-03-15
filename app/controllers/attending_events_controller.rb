class AttendingEventsController < ApplicationController

  def new
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.find(params[:id])
    @event.attendees << current_user
    flash[:notice] = "You have successfully registered for the event!"
    redirect_to root_path
    
  end


  private

  def attending_event_params
    params.require(:attending_event).permit(:user_id, :event_id)
  end
end
