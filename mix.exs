defmodule TzPerfTest.Mixfile do
  use Mix.Project

  def project do
    [app: :tz_perf_test,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:tzdata, "0.5.10"},
      {:benchfella, "~> 0.3.0", only: :dev}
    ]
  end
end
