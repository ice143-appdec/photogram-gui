Rails.application.routes.draw do

  get("/users", { :controller => "users", :action => "index" })
  

  get("/photos", { :controller => "users", :action => "index" })

end
