class SchedulesController < ApplicationController
  before_action :authenticate_user!

  def index
    # the header saves the api token, Authorization => Bearer makes it a bearer token
    @museums = HTTParty.get('https://api.yelp.com/v3/businesses/search?categories=museums&location=11238', headers: {"Authorization" => "Bearer #{ENV['YELP_API_KEY']}"})
    puts '.....................'

  end

    puts "*********************************"
    @museums = HTTParty.get('https://api.yelp.com/v3/businesses/search?categories=museums&location=10038')
    puts "*********************************"

  end

  def new
    @schedule = Schedule.new
  end

  def show
  end
end
