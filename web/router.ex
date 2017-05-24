defmodule Spikey.Router do
  use Spikey.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Spikey do
    pipe_through :api
  end
end
