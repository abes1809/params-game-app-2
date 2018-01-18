class ParamsGameController < ApplicationController

  def params_game_name_method 
    input_message = params[:my_name]
    name_upcased = input_message.upcase

    if name_upcased[0] == "A"
      output_message = "Hey, your name starts with the first letter of the alphabet!"
    end 

    render json: [your_name: name_upcased, start_with_a?: output_message] 
  end 

  def params_guessing_game_method
    guess = params[:my_guess].to_i

    correct_answer = 36 

    if guess == correct_answer
      response = "You Win!"
    elsif guess > correct_answer
      response = "No, too high"
    elsif guess < correct_answer
      response = "No, too low"
    end 

    render json: [your_guess: guess, did_i_win?: response]
        
  end 

  def params_game_segment 
    input_guess = params[:guess].to_i

     correct_answer = 36 

    if input_guess == correct_answer
      response = "You Win!"
    elsif input_guess > correct_answer
      response = "No, too high"
    elsif input_guess < correct_answer
      response = "No, too low"
    end     

    render json: [your_guess: input_guess, did_i_win?: response]
  end
end
