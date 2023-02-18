class ApplicationController < ActionController::Base
  layout("wrapper.html.erb")

  def homepage
    render(:template =>"game_templates/homepage.html.erb")
  end
 
  def play_rock
         
    @comp_move = ["rock","paper","scissors"].sample

     if 
      @comp_move == "rock" 
     @outcome = "We tied" 
     elsif 
      @comp_move == "scissors"  
     @outcome = "We won" 
     elsif 
      @comp_move == "paper" 
     @outcome = "We lost" 
     end 

     render(:template =>"game_templates/user_rock.html.erb")
  end

  def play_paper

    @comp_move = ["rock","paper","scissors"].sample

    if 
     @comp_move == "rock" 
    @outcome = "We won" 
    elsif 
     @comp_move == "scissors"  
    @outcome = "We lost" 
    elsif 
     @comp_move == "paper" 
    @outcome = "We tied" 
    end 

    render(:template =>"game_templates/user_paper.html.erb")
  end

  def play_scissors

    @comp_move = ["rock","paper","scissors"].sample

    if 
     @comp_move == "rock" 
    @outcome = "We lost" 
    elsif 
     @comp_move == "scissors"  
    @outcome = "We tied" 
    elsif 
     @comp_move == "paper" 
    @outcome = "We won" 
    end 

    render(:template =>"game_templates/user_scissors.html.erb")
  end

end
