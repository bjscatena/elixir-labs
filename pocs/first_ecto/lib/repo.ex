defmodule FirstEcto.Repo do
  use Ecto.Repo,
    otp_app: :first_ecto,
    adapter: Ecto.Adapters.SQLite3
end
