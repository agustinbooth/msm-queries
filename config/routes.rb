Rails.application.routes.draw do
  
  #Hompage
  
  get("/", { :controller => "application", :action => "homepage" })

# Directors

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/eldest", { :controller => "directors", :action => "wisest" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/:an_id", { :controller => "directors", :action => "director_detail" })

#Movies

  get("/movies", { :controller => "application", :action => "films"})
  get("/movies/:film_id", { :controller => "application", :action => "film_detail"})

end
