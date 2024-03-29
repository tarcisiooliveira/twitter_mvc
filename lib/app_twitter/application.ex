defmodule AppTwitter.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      {AppTwitter.Scheduler, []},
      {AppTwitter.TweetServer, []}
      # Starts a worker by calling: AppTwitter.Worker.start_link(arg)
      # {AppTwitter.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: AppTwitter.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
