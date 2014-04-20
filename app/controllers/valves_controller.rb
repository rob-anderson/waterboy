class ValvesController < ApplicationController

  before_filter :find_valve, :only => [:show, :toggle]

  def index
    @valves = Valve.all
  end

  def toggle
    @valve.toggle!
    redirect_to :action => :index
  end

  def all_off
    Valve.all_off!
    redirect_to :action => :index
  end

  private

  def find_valve
    @valve = Valve.find(params[:id])
  end

end
