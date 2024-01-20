defmodule PersonalWeb.AdminController do
  use PersonalWeb, :controller

  def index(conn, _params) do
    page_title = gettext("Admin")

    conn
    |> put_layout(html: :login)
    |> assign(:page_title, page_title)
    |> render(:index)
  end
end
