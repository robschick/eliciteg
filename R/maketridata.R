#' maketridata - Makes a long form of the data from november 2015 for plotting
#'
#' @examples
#' makebdata(nov2013)
makebdata <- function(nov2013){

  experts <- unique(june2015$expert)
  questions <- unique(june2015$question)
  df <- subset(nov2013, nov2013$expert %in% experts)
  df <- subset(df, df$qname %in% questions)




dbout$gender <- gender[dbout$question]
qlab <- movedir[dbout$question]
qlabfac <- factor(qlab, levels = c('N to MIDA', 'MIDA to MIDA', 'SEUS to MIDA'))
dbout$qlab <- qlabfac
return(dbout)
}
