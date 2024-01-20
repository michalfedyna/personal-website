defmodule Personal.Blog.Category do
  use Ecto.Schema
  import Ecto.Changeset

  schema "categories" do
    field :name, :string
    field :description, :string
    many_to_many :posts, Personal.Blog.Post, join_through: "posts_categories"
    timestamps()
  end

  def changeset(category, params \\ %{}) do
    category
    |> cast(params, [:name, :description])
    |> validate_required([:name, :description])
  end
end
