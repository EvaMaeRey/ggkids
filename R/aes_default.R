


#' @export
aes_default <- function(default = aes(x = 0)) {

  structure(
    list(
         default_spec = default), 
    class = "aes_default"
    )

}

#' @import ggplot2
#' @importFrom ggplot2 ggplot_add
#' @export
ggplot_add.aes_default <- function(object, plot, object_name) {
  
  if(is.null(plot$mapping[[names(object$default_spec)]])){
   plot <-  plot + object$default_spec
  }

  plot

}

