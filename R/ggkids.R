#' @export
ggkids <- function(data, 
                   spec_theme = theme_kids()){
  
 ggplot2::ggplot(data = data) + spec_theme
       
      }
