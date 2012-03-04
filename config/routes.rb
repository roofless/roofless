Roofless::Application.routes.draw do

  # Redirect the homepage to the tumblr blog
  match "/" => redirect("http://rooflessrex.tumblr.com/")

  # Cleaner urls for administrative stuff
  match "/login" => redirect("/users/login")
  match "/admin" => redirect("/refinery")
end
