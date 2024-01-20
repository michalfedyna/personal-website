defmodule Personal.Repo.Migrations.CreatePostsCategories do
  use Ecto.Migration

  def change do
    create table(:posts_categories, primary_key: false) do
      add :post_id, references(:posts, on_delete: :nothing)
      add :category_id, references(:categories, on_delete: :nothing)
    end

    unique_index(:posts_categories, [:post_id, :category_id])
  end
end
