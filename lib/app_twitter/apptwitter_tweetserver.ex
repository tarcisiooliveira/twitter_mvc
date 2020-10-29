defmodule AppTwitter.TweetServer do
  use GenServer

  @doc """
    O fato do GenServer ser um behaviour, força a implementação de algumas
    funções
  """
  def init(args) do
    {:ok, args}
  end
 @doc """
 o start_link configura como será feito a inicialização do servidor
 """
  def start_link(default) do
    # verificação/inicialização 1
    # verificação/inicialização 2
    # verificação/inicialização 3
    GenServer.start_link(__MODULE__, default, name: :tweet_server)
    # o parametro name: é o nome do servidor
  end

  def tweet(mensagem) do
    # GenServer.cast() Chamada assincrona
    IO.puts("Passou1")
    GenServer.cast(:tweet_server, {:tweet, mensagem})
    IO.puts("Passou2")
  end


  def handle_cast({:tweet, mensagem},_) do
    # recebe a mensagem do GenServer.cast e executa
    # chama o modulo do ExTweeter que não existe
    AppTwitter.Twitter.tweet(mensagem)
  end

end
