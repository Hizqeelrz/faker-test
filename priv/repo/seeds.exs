# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     FakerTest.Repo.insert!(%FakerTest.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias FakerTest.Repo
alias FakerTest.Accounts.User

# Enum.each(1..10, fn x -> Repo.insert!(%User{name: "Name is #{x}", age: Enum.random(20..35), gender: Enum.random(["male", "female"]), email: "example#{x}@example.com"})end)

# Enum.each(1..10, fn -> Repo.insert!(%User{name: FakerElixir.Name.name, age: Enum.random(20..35) FakerElixir, gender: Enum.random(["male", "female"]), email: FakerElixir.Internet.email(:popular)})end)

# 
# Enum.each(1..1000000, fn x -> Repo.insert!(%User{name: Faker.Name.name, age: Enum.random(20..35), gender: Enum.random(["male", "female"]), email: Faker.Internet.email})end)
