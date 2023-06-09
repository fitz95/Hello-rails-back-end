class GreetingsController < ApplicationController
    def random_greeting
        @Message = Message.order("RANDOM()").first
        render json: { message: @Message.greeting}
    end
end
