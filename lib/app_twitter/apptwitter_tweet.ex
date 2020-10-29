defmodule AppTwitter.Twitter do
  def tweet(mensagem) do

    IO.puts(:logger, mensagem)
  end

  def naoTweet(mensagem) do
    IO.puts(:logger, mensagem)
  end
end
