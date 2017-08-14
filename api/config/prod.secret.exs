use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :sling, Sling.Endpoint,
  secret_key_base: "PvXSs9Y7EhhIn7W2fKEPS8fqtrA+u0dBjgVmTnenpKMi/HYTDf1DaKG53FqGJAn1"

# Configure your database
config :sling, Sling.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "sling_prod",
  pool_size: 20
