class GamesController < ApplicationController
  
  def new
    @letter_array = ('a'..'z').to_a
    # get ten random letters
    @letters = []
    10.times {@letters.push(@letter_array[rand(26)].capitalize)}
  end

  def score
    letter_array = params[:letters].downcase.split
    @result_string = "Sorry, but #{params[:word]} can't be made from #{letter_array.join(",")}."
    #check the word can be built
    if params[:word].chars.all? { |l| letter_array.include?(l) }
    @result_string = "Nice, #{params[:word]} can be made but is not valid"
    end
  end
end
