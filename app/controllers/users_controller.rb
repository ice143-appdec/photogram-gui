class UsersController < ApplicationController
  def add_row
    # Parameters: {"query_username"=>"raghu"}
    the_un = params.fetch("query_username")

    u = User.new
    u.username = the_un

    u.save

    redirect_to("/users", { :notice => "User created successfully." })
    # render({ :template => "user_templates/add_row.html.erb" })
  end

  def details
    # Parameters: {"a_username"=>"elmer"}
    the_un = params.fetch("a_username")

    results = User.where({ :username => the_un })
    @the_user = results.at(0)

    render({ :template => "user_templates/show_details.html.erb" })
  end

  def index
    @all_users = User.all.order({ :username => :asc })

    render({ :template => "user_templates/list_of_users.html.erb" })
  end

end