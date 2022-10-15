defmodule Bnetd.Repo do
  use Ecto.Repo,
    otp_app: :bnetd,
    adapter: Ecto.Adapters.Postgres
end
