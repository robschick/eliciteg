#' cleveDot - Creates faceted Cleveland-style strip/dot charts of Movement Probabilities
#'
#' @param probs Posterior movement probabilities
#' @param from A vector of length n corresponding to the to regions
#' @param to A label of length 1 corresponding to the from region
#' @seealso I used recipe 3.10 from The R Graphics Cookbook, by Winston Chang
#' @examples
#' cleveDot(probs = c(0.033, 0.033, 0.033, 0.184, 0.033, 0.584, 0.033, 0.033, 0.033), from = 'BOF',
#' to = c('BOF', 'GOM', 'GSC', 'JL', 'MIDA', 'NE', 'NRTH', 'RB', 'SEUS'))
cleveDot <- function(probs, from, to){

  # if(!all.equal(sum(probs), 1, tolerance = .01)) stop('Probabilities do not sum to 1')
  df <- data.frame(from = from, to = to, moveProbs = probs)

  p <- ggplot(data = df, aes(x = moveProbs, y = reorder(from, moveProbs)))+
    geom_segment(aes(yend = from), xend = 0, colour = 'grey50')+
    geom_point(size = 3)+
    coord_cartesian(xlim = c(0, 1))+
    labs(x = 'Posterior Movement Probability', y = 'Source Region')+
    ggtitle(label = paste('Destination Region is: ', df$to, sep = ''))+
    theme_bw()+
    theme(panel.grid.major.x = element_blank(),
          panel.grid.minor.x = element_blank(),
          panel.grid.major.y = element_line(colour = 'grey60', linetype = 'dashed'))
  print(p)
}
