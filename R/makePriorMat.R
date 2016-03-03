#' makePriorMat - list elements with values from the elicitation and converts them to prior matrices
#'
#' @param list1 A list element
#'
#' @description \code{makePriorMat} is used to
makePriorMat <- function() {
  # List slice 1 or 4
  # North to Mida
  dfList[[1]][which(dfList[[1]]$expert == expert),]
  n <- dfList[[1]]$inputConfRaw[which(dfList[[1]]$expert == expert)]
  m <- dfList[[1]]$moveNortherntoMIDA[which(dfList[[1]]$expert == expert)] / 100
  tmp <- splitBeta(n, m, nreg)
  movePrior[rownames(movePrior) == 'MIDA', colnames(movePrior) %in% regNorth] <- tmp$b1

  #  North to North transitions:
  n <- dfList[[1]]$inputConfRaw[which(dfList[[1]]$expert == expert)]
  m <- dfList[[1]]$moveNortherntoNorthern[which(dfList[[1]]$expert == expert)] / 100
  tmp <- splitBeta(n, m, nreg)
  diag(movePrior)[which(rownames(movePrior) %in% regNorth)] <- tmp$b1



  # List slice 2 or 5
  # MIDA to MIDA
  dfList[[2]][which(dfList[[2]]$expert == expert2),]
  n <- dfList[[2]]$inputConfRaw[which(dfList[[2]]$expert == expert2)]
  m <- dfList[[2]]$moveMIDAtoMIDA[which(dfList[[2]]$expert == expert2)] / 100
  tmp <- splitBeta(n, m, nreg)
  movePrior2[rownames(movePrior2) == 'MIDA', rownames(movePrior2) == 'MIDA'] <- tmp$b1

  # MIDA to SEUS transition:
  n <- dfList[[2]]$inputConfRaw[which(dfList[[2]]$expert == expert2)]
  m <- dfList[[2]]$moveMIDAtoSEUS[which(dfList[[2]]$expert == expert2)] / 100
  tmp <- splitBeta(n, m, nreg)
  movePrior2[rownames(movePrior2) == 'SEUS', colnames(movePrior2) == 'MIDA'] <- tmp$b1

  # MIDA to Northern transition, i.e. the ones that need to be split:
  n <- dfList[[2]]$inputConfRaw[which(dfList[[2]]$expert == expert2)]
  m <- dfList[[2]]$moveMIDAtoNorthern[which(dfList[[2]]$expert == expert2)] / 100
  tmp <- splitBeta(n, m, nreg)
  movePrior2[rownames(movePrior2) %in% regNorth, colnames(movePrior2) == 'MIDA'] <- tmp$b1



  # list slice 3 or 6; these do not need to be split
  # SEUS to MIDA
  dfList[[3]][which(dfList[[3]]$expert == expert2),]
  n <- dfList[[3]]$inputConfRaw[which(dfList[[3]]$expert == expert2)]
  m <- dfList[[3]]$moveSEUStoMIDA[which(dfList[[3]]$expert == expert2)] / 100
  tmp <- splitBeta(n, m, nreg)
  movePrior2[rownames(movePrior2) == 'MIDA', rownames(movePrior2) == 'SEUS'] <- tmp$b1

  # SEUS to SEUS transition:
  n <- dfList[[2]]$inputConfRaw[which(dfList[[2]]$expert == expert2)]
  m <- dfList[[2]]$moveSEUStoSEUS[which(dfList[[2]]$expert == expert2)] / 100
  tmp <- splitBeta(n, m, nreg)
  movePrior2[rownames(movePrior2) == 'SEUS', colnames(movePrior2) == 'SEUS'] <- tmp$b1

}
