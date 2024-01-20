defmodule Mix.Tasks.Compose.Stop do
  @moduledoc """
  'compose.stop' mix task. Runs docker-compose stop.
  """
  use Mix.Task

  def run(_) do
    System.cmd("docker-compose", ["stop"], into: IO.stream())
  end
end
