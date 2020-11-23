defmodule TailwindStarter.Repo do
  use Ecto.Repo,
    otp_app: :tailwind_starter,
    adapter: Ecto.Adapters.Postgres
end
