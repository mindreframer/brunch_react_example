# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :brunch_react_example, BrunchReactExample.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "e88TzyKwARjG1qdzHZ7h30c0S6bZTJQXL5uq/7VqLRUsZP2qrkxk+KAw7xs+TbWx",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: BrunchReactExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false
