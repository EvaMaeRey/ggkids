compute_panel_count <- function(data, scales){
            data |> 
             tidyr::uncount(y, .remove = F)
           }

# scooter_table |> 
#   select(x = weeks, y = num_coins) |> 
#   compute_panel_count()

#' @export
chart_mark_count <- function(...){
  list(
  qlayer(geom = ggplot2::GeomText,
         stat = qstat(compute_panel = compute_panel_count), 
         position = position_jitter(width = .12, height = .12),
         ..., show.legend = F),
  aes_default(ggplot2::aes(x = 0)),
  aes_default(ggplot2::aes(y = 0)),
  aes_default(ggplot2::aes(label = "x")),
  ggplot2::scale_size(range = c(2,10))
  
  )
  }
