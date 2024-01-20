defmodule PersonalWeb.PortfolioController do
  use PersonalWeb, :controller

  def index(conn, _params) do
    page_title = gettext("Portfolio")

    conn
    |> assign(:page_title, page_title)
    |> put_layout(html: :app)
    |> render(:index)
  end
end
