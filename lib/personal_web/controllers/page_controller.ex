defmodule PersonalWeb.PageController do
  use PersonalWeb, :controller

  def index(conn, _params) do
    conn
    |> put_layout(html: :app)
    |> assign(:page_title, "Home")
    |> render(:index)
  end
end
