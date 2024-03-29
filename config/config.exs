# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :spikey,
  ecto_repos: [Spikey.Repo]

# Configures the endpoint
config :spikey, Spikey.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7++lusVWmL1cW0dwklRwDJ9DUINljvePjjn3Pdr170EU1I4u9Gz+byQSXWiJUwdg",
  render_errors: [view: Spikey.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Spikey.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :guardian, Guardian,
  issuer: "Spikey",
  ttl: { 3, :days },
  verify_issuer: true,
  secret_key: "gBa8bKMUc610vPW5jgavWfdkiUOm2AoD8IM3GWy1p7ApDIedKmr6UUFR/2s1CQ2M",
  serializer: Spikey.GuardianSerializer

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
