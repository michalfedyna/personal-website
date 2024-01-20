defmodule Personal.Blog.Author do
  use Ecto.Schema
  import Ecto.Changeset

  schema "authors" do
    field :name, :string
    field :email, :string
    field :bio, :string
    many_to_many :posts, Personal.Blog.Post, join_through: "posts_authors"
    timestamps()
  end

  def changeset(author, params \\ %{}) do
    author
    |> cast(params, [:name, :email, :bio])
    |> validate_required([:name, :email, :bio])
  end
end
