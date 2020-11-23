defmodule TailwindStarter.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      TailwindStarter.Repo,
      # Start the Telemetry supervisor
      TailwindStarterWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: TailwindStarter.PubSub},
      # Start the Endpoint (http/https)
      TailwindStarterWeb.Endpoint
      # Start a worker by calling: TailwindStarter.Worker.start_link(arg)
      # {TailwindStarter.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TailwindStarter.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    TailwindStarterWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
