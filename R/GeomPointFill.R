#' @export
GeomPointFill <- ggplot2::ggproto(NULL, ggplot2::GeomPoint, 
                         default_aes =
                           modifyList(ggplot2::GeomPoint$default_aes,
                         ggplot2::aes(shape = 21)))

#' @export
chart_mark <- function(...){
  list(stat_identity(geom = ggplot2::GeomText, show.legend = F, ...),
  aes_default(aes(x = 0)),
  aes_default(aes(y = 0)),
  # aes_default(aes(shape = I(after_stat(picture)))),
  scale_size(range = c(2,10)), 
  aes_default(aes(label = "x"))
  
  )
  }

#' @export
chart_point <- function(...){
  list(stat_identity(geom = GeomPointFill, show.legend = F, ...),
  aes_default(aes(x = 0)),
  aes_default(aes(y = 0)),
  # aes_default(aes(shape = I(after_stat(picture)))),
  scale_size(range = c(2,10))
  
  )
  }


#' @export
chart_fit_global_line <- function(...){
  
  geom_smooth(method = lm, ..., show.legend = F, se = F, 
              linetype = "dashed",
              ggplot2::aes(shape = NULL, 
                  picture = NULL,))
  
}

#' @export
set_picture <- function(picture){ggplot2::aes(shape = I({{picture}}))}

#' @export
use_picture <- function(picture){ggplot2::aes(label = {{picture}})}
