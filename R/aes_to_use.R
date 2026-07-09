#' @export
encode <- function(color, ...){
  aes(color = {{color}}, fill = {{color}}, ...) 
}

#' @export
viz <- function(color, ...){
  aes(color = {{color}}, fill = {{color}}, ...) 
}

#' @export
use_x <- function(x){aes(x = {{x}})}

#' @export
label_x <- function(x){labs(x = x)}

#' @export
use_y <- function(y){list(aes(y = {{y}}))}

#' @export
label_y <- function(y){labs(y = y)}


#' @export
label_color <- function(color){labs(fill = color,
                                    color = color)}

#' @export
use_weight <- function(weight){aes(weight = {{weight}})}

#' @export
use_area <- function(area){aes(weight = {{area}})}

#' @export
use_rows <- function(rows, cols, ...){facet_grid(rows = vars({{rows}}), cols = vars({{cols}}), ...)}

#' @export
use_columns <- function(cols, rows, ...){facet_grid(rows = vars({{rows}}), cols = vars({{cols}}), ...)}

#' @export
use_rows_columns <- function(rows, cols, ...){facet_grid(rows = vars({{rows}}), cols = vars({{cols}}), ...)}

#' @export
use_wrap <- function(wrap, ...){facet_wrap(facets = vars({{wrap}}), ...)}

#' @export
use_size <- function(size){aes(size = {{size}})}

#' @export
use_shape <- function(shape){aes(shape = {{shape}})}

#' @export
use_color <- function(color){aes(fill = {{color}})}


#' @export
use_group <- function(group){aes(group = {{group}})}

#' @export
use_color_line <- function(color){aes(color = {{color}})}


