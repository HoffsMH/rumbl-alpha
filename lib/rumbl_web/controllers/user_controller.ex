defmodule RumblWeb.UserController do
  use RumblWeb, :controller
  alias Rumbl.{Repo, User}

  def index(conn, _params) do
    with users <- Repo.all(User) do
      render conn, "index.html", users: users
    end
  end
end
