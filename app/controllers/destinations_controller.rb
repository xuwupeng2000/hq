class DestinationsController < ApplicationController

  def index
    @destinations = Destination.includes(:projects)
  end

end
