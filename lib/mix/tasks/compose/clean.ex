defmodule Mix.Tasks.Compose.Clean do
  @moduledoc """
  'compose.clean' mix task. Removes all containers and volumes.
  """
  use Mix.Task

  def run(_) do
    System.cmd("docker-compose", ["rm", "-f", "-v"], into: IO.stream())
  end
end
