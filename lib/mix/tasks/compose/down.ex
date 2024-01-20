defmodule Mix.Tasks.Compose.Down do
  @moduledoc """
  'compose.stop' mix task. Runs docker-compose down.
  """
  use Mix.Task

  def run(_) do
    System.cmd("docker-compose", ["down"], into: IO.stream())
  end
end
