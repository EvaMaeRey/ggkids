#' @export
chart_pie <- function(...){
  
  list(
  
  geom_bar(position = "fill", width = 1, show.legend = F, ...),
  # add defaults that bar doesn't usually include
  aes_default(aes(y = .5)), 
  aes_default(aes(fill = "All")),
  aes_default(aes(weight = 1)),
  aes_default(aes(color = from_theme(paper))),
  # add labels
  stat_count(geom = GeomLabel, color = "transparent",
             position = position_fill(vjust = .5),
             aes(label = after_stat(fill), 
                 y = .9, 
                 # group = after_stat(fill)
                 ), alpha = 0,
             show.legend = F,
             size = 30
             ),
  coord_polar(),
  theme(axis.text = element_blank(),
        axis.ticks = element_blank(),
        axis.line = element_blank(),
        axis.title = element_blank(),
        panel.grid = element_blank()),
  labs(fill = NULL)
  
  )
  
}
