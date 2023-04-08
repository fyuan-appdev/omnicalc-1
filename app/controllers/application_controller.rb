class ApplicationController < ActionController::Base
  
  def blank_square_form
    render ({:template =>"calculation_templates/square_form.html.erb"})
  end

  def square_result
    @number = params.fetch("number").to_f
    @square = (@number*@number)
    render ({:template =>"calculation_templates/square_result.html.erb"})
  end

  def blank_random_form
    render ({:template =>"calculation_templates/random_form.html.erb"})
  end

  def random_result
    @min = params.fetch("min").to_f
    @max = params.fetch("max").to_f
    @random_number = rand(@min..@max)
    render ({:template =>"calculation_templates/random_result.html.erb"})
  end

  def blank_square_root_form
    render ({:template =>"calculation_templates/squareroot_form.html.erb"})
  end

  def square_root_result
    @number = params.fetch("number").to_f
    @square_root = (@number**0.5)
    render ({:template =>"calculation_templates/squareroot_result.html.erb"})
  end

  def blank_payment_form
    render ({:template =>"calculation_templates/payment_form.html.erb"})
  end

  def payment_result

    @APR = params.fetch("APR").to_f.to_s(:percentage)
    @num_years = params.fetch("num_years").to_f.round
    @principal = params.fetch("principal").to_f.to_s(:currency)
    @payment = 1.to_f.to_s(:currency)

    render ({:template =>"calculation_templates/payment_result.html.erb"})
  end


end
