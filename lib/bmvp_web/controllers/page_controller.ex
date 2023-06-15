defmodule BmvpWeb.PageController do
  use BmvpWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
