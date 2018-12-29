defmodule FakerTest.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :age, :integer
    field :name, :string
    field :gender, :string
    field :email, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :age, :gender, :email])
    |> validate_required([:name, :age, :gender, :email])
  end
end
