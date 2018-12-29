defmodule FakerTest.Repo.Migrations.DropUniqueIndexFromUsersEmail do
  use Ecto.Migration

  def change do
    drop index("users", [:email])
  end
end
