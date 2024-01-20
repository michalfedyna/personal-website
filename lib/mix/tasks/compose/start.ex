defmodule Mix.Tasks.Compose.Start do
  @moduledoc """
  'compose.start' mix task. Runs docker-compose start.
  """
  use Mix.Task

  def run(_) do
    System.cmd("docker-compose", ["start"], into: IO.stream())
  end
end
