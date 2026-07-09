#' @export
chart_portion_full <- function(...){
  
  list(
       ggplot2::geom_col(fill = "transparent", ggplot2::aes(y = 1)),
       ggplot2::geom_col( ... ),
       aes_default(aes(color = from_theme(ink)))
       )
  
}

#' @export
stamp_hline <- function(y = .5, linetype = "dashed", ...){
  
  ggplot2::geom_hline(yintercept = y, linetype = linetype, ...)
  
}
