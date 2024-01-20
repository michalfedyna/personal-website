defmodule PersonalWeb.ContactController do
  use PersonalWeb, :controller

  def index(conn, _params) do
    page_title = gettext("Contact")

    conn
    |> assign(:page_title, page_title)
    |> put_layout(html: :app)
    |> render(:index)
  end
end
