#' makebdata - Makes a long form of the data for plotting
#'
#' @examples
#' makebdata(june2015)
makebdata <- function(june2015){

  experts <- unique(june2015$expert)
  nex <- length(experts)
  questions <- unique(june2015$question)
  gender <- c(q9round2 = 'Female', q10round2 = 'Female', q11round2 = 'Female',
              q12round2 = 'Male', q13round2 = 'Male', q14round2 = 'Male')
  movedir <- c(q9round2 = 'N to MIDA', q10round2 = 'MIDA to MIDA', q11round2 = 'SEUS to MIDA',
               q12round2 = 'N to MIDA', q13round2 = 'MIDA to MIDA', q14round2 = 'SEUS to MIDA')
  nq <- length(questions)
  x <- seq(0, 1, length = 1000)
  dbout <- numeric(0)

  for(q in questions){
    dsub <- subset(june2015, question == q)
    nvec <- dsub$inputConfScale
    pvec <- dsub$moveMIDA / 100

    dbvals <- numeric(0)
    for(e in 1:length(experts)){
      dbvalsi <- dbeta(x, shape1 = nvec[e] * pvec[e], shape2 = nvec[e] - nvec[e] * pvec[e])
      dbvals <- c(dbvals, dbvalsi)
    }

    df <- data.frame(xseq = rep(x, nex), dbvals = dbvals,
                     expert = rep(experts, each = length(x)), question = q)

    dbout <- rbind(dbout, df)

  }

dbout$gender <- gender[dbout$question]
qlab <- movedir[dbout$question]
qlabfac <- factor(qlab, levels = c('N to MIDA', 'MIDA to MIDA', 'SEUS to MIDA'))
dbout$qlab <- qlabfac
return(dbout)
}
