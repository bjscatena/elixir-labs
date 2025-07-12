import Config

config :first_ecto, ecto_repos: [FirstEcto.Repo]

import_config "#{config_env()}.exs"
