#' @export
theme_chart_bar <- function(){
  theme(panel.grid.minor = element_blank(), 
        panel.grid.major.x = element_blank(),
        axis.ticks.x = element_blank())
  }

#' @export
chart_bar <- function(...){
  list(theme_chart_bar(),
       geom_label(vjust = 0, aes(label = after_stat(y), fill = NULL),
                  linewidth = 0), 
       geom_col(...), 
       scale_y_continuous(expand = expansion(c(0, .3))),
       labs(x = NULL))
}


compute_mark_stack <- function(data, scales, width = 0.2){
               
    data$shape <- data$shape %||% data$picture

    data |> 
      uncount(y) |>
      dplyr::mutate(row = row_number()) |> 
      dplyr::mutate(y = row - 0.5) |>
      dplyr::mutate(width = width)
    
  }

#' @export
chart_mark_stack <- function(...){
  
  list(
  qlayer(
    geom = GeomText, 
    stat = qstat(compute_mark_stack)
  ),
  # spacing
  qlayer(
    geom = GeomTile, 
    stat = qstat(compute_mark_stack), 
    alpha = 0
  ),
  ggplot2::scale_y_continuous(expand = ggplot2::expansion(c(0, .3))),
  aes_default(aes(y = 1)),
  aes_default(aes(x = "All")),
  ggplot2::labs(x = NULL, y = NULL),
  ggplot2::guides(y = "none"),
  aes_default(aes(label = "x"))
  )

  
}
