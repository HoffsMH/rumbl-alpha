defmodule RumblWeb.UserController do
  use RumblWeb, :controller
  alias Rumbl.{Repo, User}

  def index(conn, _params) do
    with users <- Repo.all(User) do
      render conn, "index.html", users: users
    end
  end

  def show(conn, %{"id" => id}) do
    with user <- Repo.get(User, id) do
      render conn, "show.html", user: user
    end
  end
end
