outer_space_data |>
ggplot() +
  use_x(shuttle) +
  use_y(fuel) +
  chart_part_of_full() +
  set_color("darkolivegreen3") +
  stamp_hline(.75)
