defmodule PersonalWeb.BlogController do
  use PersonalWeb, :controller

  def index(conn, _params) do
    page_title = gettext("Blog")

    conn
    |> assign(:page_title, page_title)
    |> put_layout(html: :app)
    |> render(:index)
  end

  def tag(conn, _params) do
    page_title = gettext("Blog")

    conn
    |> assign(:page_title, page_title)
    |> put_layout(html: :app)
    |> render(:index)
  end

  def category(conn, _params) do
    page_title = gettext("Blog")

    conn
    |> assign(:page_title, page_title)
    |> put_layout(html: :app)
    |> render(:index)
  end

  def author(conn, _params) do
    page_title = gettext("Blog")

    conn
    |> assign(:page_title, page_title)
    |> put_layout(html: :app)
    |> render(:index)
  end
end
