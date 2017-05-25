defmodule Spikey.Session do
  alias Spikey.{Repo, User}

  def authenticate(%{"email" => email, "password" => password}) do
    user = Repo.get_by(User, email: email)

    case check_password(user, password) do
      true -> {:ok, user}
      _ -> :error
    end
  end

  defp check_password(user, password) do
    case user do
      nil -> Comeonin.Bcrypt.dummy_checkpw()
      _ -> Comeonin.Bcrypt.checkpw(password, user.encrypted_password)
    end
  end
end
