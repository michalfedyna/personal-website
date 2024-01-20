defmodule Personal.Blog do
  def get_post(_id) do
  end

  def add_post(_post) do
  end

  def get_all_posts, do: Personal.Repo.all(Personal.Blog.Post)

  def get_all_tags, do: Personal.Repo.all(Personal.Blog.Tag)

  def get_all_categories, do: Personal.Repo.all(Personal.Blog.Category)

  def get_all_authors, do: Personal.Repo.all(Personal.Blog.Author)

  def get_posts_by_tag(_tag, _page, _length) do
  end

  def get_posts_by_category(_category, _page, _length) do
  end

  def get_posts_by_author(_author, _page, _length) do
  end
end
