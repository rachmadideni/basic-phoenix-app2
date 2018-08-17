# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :basic_phoenix_app2,
  ecto_repos: [BasicPhoenixApp2.Repo]

# Configures the endpoint
config :basic_phoenix_app2, BasicPhoenixApp2Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EujUoWiAc28B1iss9a2DdujT8Chgt92NGxJ2a4YYH4fkhRrFX6vFK05CMjF1swpV",
  render_errors: [view: BasicPhoenixApp2Web.ErrorView, accepts: ~w(json)],
  pubsub: [name: BasicPhoenixApp2.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
