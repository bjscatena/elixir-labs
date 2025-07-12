import Config

config :first_ecto, FirstEcto.Repo,
  database: "priv/first_ecto.dev.db",
  pool_size: 10
