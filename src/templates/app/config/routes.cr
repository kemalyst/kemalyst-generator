require "../src/controllers/*"

include Kemalyst::Handler

get "/", HomeController, :index

# the `resources` macro will create these 7 routes for you:
# get "/demos", DemoController, :index
# get "/demos/new", DemoController, :new
# post "/demos", DemoController, :create
# get "/demos/:id", DemoController, :show
# get "/demos/:id/edit", DemoController, :edit
# patch "/demos/:id", DemoController, :patch
# delete "/demos/:id", DemoController, :delete

# resources Demo

# the `resource` macro will create the following routes for you
# get "/demo/new", DemoController, :new
# post "/demo", DemoController, :create
# get "/demo", DemoController, :show
# get "/demo/edit", DemoController, :edit
# patch "/demo", DemoController, :update
# delete "/demo", DemoController, :delete

# resource Demo
