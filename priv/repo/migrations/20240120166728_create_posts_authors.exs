defmodule Personal.Repo.Migrations.CreatePostsAuthors do
  use Ecto.Migration

  def change do
    create table(:posts_authors, primary_key: false) do
      add :post_id, references(:posts, on_delete: :nothing)
      add :author_id, references(:authors, on_delete: :nothing)
    end

    unique_index(:posts_authors, [:post_id, :author_id])
  end
end
