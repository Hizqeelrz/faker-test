# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :faker_test,
  ecto_repos: [FakerTest.Repo]

# Configures the endpoint
config :faker_test, FakerTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xu56TGHpo1j7LUl63NxDZHIDcFsdERItFbFrgBFtGT/6XupbnIebapvXq3KXYXIG",
  render_errors: [view: FakerTestWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FakerTest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix and Ecto
config :phoenix, :json_library, Jason
config :ecto, :json_library, Jason


# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :faker_test, FakerTest.Mailer,
  adapter: Bamboo.LocalAdapter

config :faker_test, FakerTest.Scheduler,
  jobs: [
    phoenix_job: [
      schedule: "* * * * *",
      task: {FakerTest.Seed2, :seed_fast, []}
    ]
  ]
