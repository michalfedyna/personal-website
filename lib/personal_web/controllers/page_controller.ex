defmodule PersonalWeb.PageController do
  use PersonalWeb, :controller

  def index(conn, _params) do
    page_title = gettext("Home")

    conn
    |> put_layout(html: :app)
    |> assign(:page_title, page_title)
    |> render(:index)
  end
end
