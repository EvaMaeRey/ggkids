#' @export
theme_kids <- function(paper = "grey98", 
    ink = "grey30", 
    base_size = 30,
    base_family = "Comic Sans MS", ...){
  ggplot2::theme_classic(paper = paper, 
                         ink = ink, 
                         base_size = base_size, 
                         base_family = base_family, ...
    ) 
}


#' @export
label_title <- function(title){labs(title = title)}

#' @export
label_subtitle <- function(subtitle){labs(subtitle = subtitle)}

#' @export
label_caption <- function(caption){labs(caption = caption)}

#' @export
label_x <- function(x){labs(x = x)}

#' @export
label_y <- function(y){labs(y = y)}



#' @export
write_table <- function(...){tribble(...) |> mutate(across(where(is.character), forcats::fct_inorder))}


