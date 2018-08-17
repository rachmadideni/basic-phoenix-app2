defmodule BasicPhoenixApp2Web.Router do
  use BasicPhoenixApp2Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BasicPhoenixApp2Web do
    pipe_through :api
  end
end
