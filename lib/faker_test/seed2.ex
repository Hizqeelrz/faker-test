defmodule FakerTest.Seed2 do

  alias FakerTest.Repo
  alias FakerTest.Accounts.User

  def seed_fast do
    Enum.each(1..4, fn x -> Repo.insert!(%User{name: Faker.Name.name, age: Enum.random(20..35), gender: Enum.random(["male", "female"]), email: Faker.Internet.email})end)
  end
end
