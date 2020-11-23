defmodule TailwindStarterWeb.PageController do
  use TailwindStarterWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
