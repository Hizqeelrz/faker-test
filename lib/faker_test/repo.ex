defmodule FakerTest.Repo do
  use Ecto.Repo,
    otp_app: :faker_test,
    adapter: Ecto.Adapters.Postgres
end
