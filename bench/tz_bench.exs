defmodule TzdataBench do
  use Benchfella

  @ts :calendar.datetime_to_gregorian_seconds({{2016,1,1},{0,0,0}})

  bench "Tzdata.periods" do
    Tzdata.periods("Europe/Amsterdam")
  end

  bench "Tzdata.periods_for_time" do
    Tzdata.periods_for_time("Europe/Amsterdam", @ts, :wall)
  end

end
