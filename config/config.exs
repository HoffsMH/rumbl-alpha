# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
# config :rumbl, Rumbl.Repo
  # ecto_repos: [Rumbl.Repo]

# Configures the endpoint
config :rumbl, RumblWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JgAjtcwynRjAlWRcrWNKlQNQYqd+kje0sbGZ1leMin6dlYXspH8Cc/QIB1W7Oan4",
  render_errors: [view: RumblWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Rumbl.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
