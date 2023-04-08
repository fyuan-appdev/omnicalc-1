class ApplicationController < ActionController::Base
  
  def blank_square_form
    render ({:template =>"calculation_templates/square_form.html.erb"})
  end

  def square_result
    @number = params.fetch("number").to_f
    @square = (@number*@number).round(2)
    render ({:template =>"calculation_templates/square_result.html.erb"})
  end

end
