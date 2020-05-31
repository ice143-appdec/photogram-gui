Rails.application.routes.draw do

  get("/insert_user_record", { :controller => "users", :action => "add_row" })
  get("/users/:a_username", { :controller => "users", :action => "details" })

  get("/", { :controller => "users", :action => "index" })
  get("/users", { :controller => "users", :action => "index" })

  get("/photos", { :controller => "photos", :action => "index" })
end
