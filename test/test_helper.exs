ExUnit.start

Mix.Task.run "ecto.create", ~w(-r BrunchReactExample.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r BrunchReactExample.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(BrunchReactExample.Repo)

