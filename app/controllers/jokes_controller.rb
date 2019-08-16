class JokesController < ApplicationController

  def index
    @jokes = Joke.order("RANDOM()").first
  end

  def new
    @jokes = Joke.new
  end

  def create
    Joke.create(joke_params)
    if @joke.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered in invalid.'
    end 
    redirect_to root_path
  end

  private

  def joke_params
    params.require(:joke).permit(:joke)
  end 

end
