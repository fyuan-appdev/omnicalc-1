class ApplicationController < ActionController::Base
  
  def blank_square_form
    render ({:template =>"calculation_templates/square_form.html.erb"})
  end

  def square_result
    @number = params.fetch("number").to_f
    @square = (@number*@number).round(2)
    render ({:template =>"calculation_templates/square_result.html.erb"})
  end

  def blank_random_form
    render ({:template =>"calculation_templates/random_form.html.erb"})
  end

  def random_result
    @min = params.fetch("min").to_f
    @max = params.fetch("max").to_f
    @random_number = rand(@min..@max).round(2)
    render ({:template =>"calculation_templates/random_result.html.erb"})
  end


end
