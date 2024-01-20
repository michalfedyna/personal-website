defmodule Personal.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :title, :string
    field :body, :string
    many_to_many :authors, Personal.Blog.Author, join_through: "posts_authors"
    many_to_many :categories, Personal.Blog.Category, join_through: "posts_categories"
    many_to_many :tags, Personal.Blog.Tag, join_through: "posts_tags"
    timestamps()
  end

  def changeset(post, params \\ %{}) do
    post
    |> cast(params, [:title, :body])
    |> validate_required([:title, :body])
  end
end
