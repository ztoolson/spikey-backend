defmodule Spikey.CurrentUserView do
  use Spikey.Web, :view

  def render("show.json", %{user: user}) do
    user
  end

  def render("error.json", _) do
    %{error: "error with something weird"}
  end
end
