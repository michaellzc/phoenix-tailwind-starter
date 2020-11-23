# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :tailwind_starter,
  ecto_repos: [TailwindStarter.Repo]

# Configures the endpoint
config :tailwind_starter, TailwindStarterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "rsiYxQQc2ZoVnyw5+YdfNrXMsDoyAjM3wTvfgaZqvMXehc9qWdajvjCt1huX9TiE",
  render_errors: [view: TailwindStarterWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TailwindStarter.PubSub,
  live_view: [signing_salt: "SMveqn5v"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
