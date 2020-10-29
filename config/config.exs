use Mix.Config

config :app_twitter, AppTwitter.Scheduler,
  jobs: [
    # {"* * * * *",fn -> AppTwitter.FileReader.ler_texto_arquivo("./lib/app_twitter/priv/exemplo.txt") end}
    {"* * * * *",
     fn -> AppTwitter.FileReader.ler_texto_arquivo("./lib/app_twitter/priv/exemplo.txt") end
     }
  ]
