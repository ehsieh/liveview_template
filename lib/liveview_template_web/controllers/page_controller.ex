defmodule LiveviewTemplateWeb.PageController do
  use LiveviewTemplateWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
