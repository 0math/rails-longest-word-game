class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    @word = params[:word]
    # save loop validation to a variable and call it from the view
    @word.split('').each do |letter|
      params[:letters].include? letter
    end
  end
end
