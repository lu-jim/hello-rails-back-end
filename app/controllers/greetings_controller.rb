class GreetingsController < ApplicationController
  def index
    @greetings = Greeting.all
    @random = Greeting.find(rand(@greetings.length) + 1)
    render json: {
      greeting: @random.message
    }.to_json
  end
end
