defmodule Blog.SessionController do
  use Blog.Web, :controller
  alias Blog.{Repo, User}

  # def new(conn, %{"login" => login, "password" => password} = params) do
  def new(conn, _params) do
    # if Repo.get_by User, login: login do
    #
    # end
    render(conn, "new.html")
  end

  def logout(conn, _params) do

  end
end
