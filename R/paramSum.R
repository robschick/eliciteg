#' paramSum - Creates faceted summary of the Two Elicitations
#'
#' @seealso This is based off the summary plots I made for the shiny summary after the expert elicitation in June of 2015. The goal was to show how things changed between the two different elicitations. Or at least to be able to show a summary of the two different elicitations given that they were of two different forms.
#' @examples
#' paramSum()
paramSum <- function(present = TRUE){

  ifelse(present, bsize <- 18, bsize <- 12)

  p <- ggplot(makebdata(june2015), aes(x = xseq, y = dbvals, group = expert))+
    geom_line()+
    ylab('Probability Density Function')+
    xlab('# whales / 100')+
    facet_grid(gender ~ qlab)+
    theme_bw(base_size = bsize)
  print(p)


}
