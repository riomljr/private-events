class AttendingEventsController < ApplicationController

  def new
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.find(params[:id])
    @event.attendees << current_user
    flash[:notice] = "You have successfully registered for the event!"
    redirect_to_rooth_path
    
  end
end
