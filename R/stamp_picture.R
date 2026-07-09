#' @export
stamp_picture <- function(picture = "🙂", x = I(.5), y = I(.5), ...){
  
  annotate(geom = GeomText, label = picture, x = x, y = y, ...)
  
}

