defmodule FakerTestWeb.PageController do
  use FakerTestWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
