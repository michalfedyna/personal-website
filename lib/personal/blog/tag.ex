defmodule Personal.Blog.Tag do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tags" do
    field :name, :string
    field :description, :string
    many_to_many :posts, Personal.Blog.Post, join_through: "posts_tags"
    timestamps()
  end

  def changeset(tag, params \\ %{}) do
    tag
    |> cast(params, [:name, :description])
    |> validate_required([:name, :description])
  end

  def new_tag(attrs \\ %{}) do
    %Personal.Blog.Tag{}
    |> Personal.Blog.Tag.changeset(attrs)
    |> Personal.Repo.insert()
  end
end
