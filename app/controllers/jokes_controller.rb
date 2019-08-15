class JokesController < ApplicationController

  def index
    @jokes = Joke.order("RANDOM()").first
  end

end
