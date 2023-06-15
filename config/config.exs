# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bmvp,
  ecto_repos: [Bmvp.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :bmvp, BmvpWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9WlB2QTSoA6LTfc/Oruwe6sM2/q6mWINnZFefSAA4SnW6rs8wzPFqEcxItw+6/z/",
  render_errors: [view: BmvpWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Bmvp.PubSub,
  live_view: [signing_salt: "we/SZCXC"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
