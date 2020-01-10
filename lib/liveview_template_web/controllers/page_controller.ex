defmodule LiveviewTemplateWeb.PageController do
  use LiveviewTemplateWeb, :controller

  alias Phoenix.LiveView

  def index(conn, _) do
    LiveView.Controller.live_render(conn, LiveviewTemplateWeb.MyLiveView, session: %{})
  end
end
