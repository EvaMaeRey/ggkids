scooter_table |>
ggplot() +
  use_x(weeks) + 
  use_y(num_coins) + 
  use_picture("🪙") +
  chart_point_count() + 
  chart_line() +
  stamp_hline(2.25)
