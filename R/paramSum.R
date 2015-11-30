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

  yseq <- seq(12.5, 17.5, by = 0.5)
  for (i in 1:nrow(dataInput2())) {
    lines(x = c(dataInput2()$min[i] / 100, dataInput2()$max[i] / 100),
          y = c(yseq[i], yseq[i]), lwd = 2, col = rgb(0, 0, 0, 0.2))
    points(dataInput2()$mode[i] / 100, yseq[i], pch = 24, bg = 'grey60', cex = .75)
  }

    print(p)


}
