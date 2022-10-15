defmodule BnetdWeb.PageController do
  use BnetdWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
