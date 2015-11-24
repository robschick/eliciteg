#' cleveDot - Creates faceted Cleveland-style strip/dot charts of Movement Probabilities
#'
#' @param n A number corresponding to the number of geographic regions
#' @param probs Posterior movement probabilities
#' @param from A label of length 1 corresponding to the from region
#' @param to A vector of length n corresponding to the to regions
#' @examples
#' cleveDot(n = 9, probs = c(0.033, 0.033, 0.033, 0.184, 0.033, 0.584, 0.033, 0.033, 0.033), from = 'BOF',
#' to = c('BOF', 'GOM', 'GSC', 'JL', 'MIDA', 'NE', 'NRTH', 'RB', 'SEUS'))
cleveDot <- function(n, probs, from, to){

  if(!all.equal(sum(probs), 1, tolerance = .01)) stop('Probabilities do not sum to 1')
  df <- data.frame(from = from, to = to, moveProbs = probs)

  p <- ggplot(data = df, aes(x = moveProbs, y = reorder(to, moveProbs)))+
    geom_segment(aes(yend = to), xend = 0, colour = 'grey50')+
    geom_point(size = 3)+
    coord_cartesian(xlim = c(0, 1))+
    labs(x = 'Posterior Movement Probability', y = 'Destination Region')+
    ggtitle(label = paste('From Region is: ', from, sep = ''))+
    theme_bw()+
    theme(panel.grid.major.x = element_blank(),
          panel.grid.minor.x = element_blank(),
          panel.grid.major.y = element_line(colour = 'grey60', linetype = 'dashed'))
  print(p)
}
