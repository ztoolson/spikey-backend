defmodule Spikey.SessionView do
  use Spikey.Web, :view

  def render("show.json", %{jwt: jwt, user: user}) do
    %{
      jwt: jwt,
      user: user
    }
  end

  def render("error.json", _) do
    %{error: "Invalid email or password"}
  end

  def render("forbidden.json", %{error: error}) do
    %{error: error}
  end
end
