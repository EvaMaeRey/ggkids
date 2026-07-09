#' @export
chart_bar_plunging <- function(...){
  list(ggplot2::geom_label(vjust = 1, aes(label = ggplot2::after_stat(y), fill = NULL),
                  linewidth = 0),
    geom_col(...), 
       theme_chart_bar(),
       ggplot2::scale_y_reverse(expand = ggplot2::expansion(c(.3, 0))),
       ggplot2::scale_x_discrete(position = "top"),
       labs(x = NULL)
       )
}
