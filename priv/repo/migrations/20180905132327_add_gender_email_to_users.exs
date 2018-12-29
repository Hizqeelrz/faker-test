defmodule FakerTest.Repo.Migrations.AddGenderEmailToUsers do
  use Ecto.Migration

  def change do
    alter table("users") do
      add :gender, :string
      add :email, :string
    end
  end
end
