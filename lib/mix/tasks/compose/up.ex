defmodule Mix.Tasks.Compose.Up do
  @moduledoc "'compose.up' mix task.Runs docker-compose up"
  use Mix.Task

  def run(_) do
    System.cmd("docker-compose", ["up", "-d"], into: IO.stream())
  end
end
