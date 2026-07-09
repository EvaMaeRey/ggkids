#' @export
chart_line <- function(...){
  
  list(ggplot2::geom_line(...), 
       aes_default(ggplot2::aes(group = 1))
       )
  
}
  

