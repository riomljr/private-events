class EventsController < ApplicationController
  before_action :authenticate_user!

  def index
    @events = Event.all
  end
  
  def new
    @event = current_user.created_events.build
  end

  def create
    @event = current_user.created_events.build(event_params)

    respond_to do |format|
      if @event.save
        format.html {redirect_to user_path(current_user.id), notice: "Event was succesfully created."}
      else
        format.html { render :new}
      end
    end
  end

  def show
    @event = Event.find(params[:id])
  end

 

  private
  
  def event_params
    params.require(:event).permit(:event_date, :name, :location)
  end

  

end
