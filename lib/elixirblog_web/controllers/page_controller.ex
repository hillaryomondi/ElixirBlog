defmodule ElixirblogWeb.PageController do
  use ElixirblogWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
