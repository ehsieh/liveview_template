# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :liveview_template, LiveviewTemplateWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8lNYbJHSLIQhfTOyyYS2m5vSOZLnY3XT+Jk70LOSXr5oXWiQl0HSwAg9kBCPVYo+",
  render_errors: [view: LiveviewTemplateWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LiveviewTemplate.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "Lu7ZiqzbJ70w3FYuuEzSe7BZ9v4Sg3kafQaI+Renfd59CmSH9TozKA+RHFFNBDm3"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :phoenix,
  template_engines: [leex: Phoenix.LiveView.Engine]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
