class Api::V1::GreetingsController < ApplicationController
  def index
    greetings = Greeting.all
    greet = greetings.sample

    render json: { greeting: greet.text }
  end
end
