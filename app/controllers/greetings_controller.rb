class GreetingsController < ApplicationController
  def random_greeting
    @message = Message.order('RANDOM()').first
    render json: { message: @message.greeting }
  end
end
