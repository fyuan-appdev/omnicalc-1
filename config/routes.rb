Rails.application.routes.draw do

  get("/square/new",{ :controller =>"application", :action => "blank_square_form"})

  get("/square/result",{ :controller =>"application", :action => "square_result"})

  get("/random/new",{ :controller =>"application", :action => "blank_random_form"})

  get("/random/result",{ :controller =>"application", :action => "random_result"})


end
