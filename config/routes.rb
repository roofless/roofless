Roofless::Application.routes.draw do
  match "/" => redirect("http://rooflessrex.tumblr.com/")

  match "/login" => redirect("/users/login")
end
