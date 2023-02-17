class ApplicationController < ActionController::Base
  layout("wrapper.html.erb")

  # Add your actions below this line
  # ================================
  def play_rock
    render(:template =>"game_templates/user_rock.html.erb")
  end

  def homepage
    render(:template =>"game_templates/homepage.html.erb")
  end

end
