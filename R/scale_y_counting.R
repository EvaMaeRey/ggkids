#' @export
scale_y_counting <- function(breaks = 0:10000, ...){

  ggplot2::scale_y_continuous(breaks = breaks)

}


#' @export
scale_x_counting <- function(breaks = 0:10000, ...){

  ggplot2::scale_x_continuous(breaks = breaks)

}
