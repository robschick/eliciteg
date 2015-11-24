#' Posterior Movement Probabilities for Females (Flat Prior)
#'
#' A dataset containing the estimated movement probabilities from
#' one region (columns) to another region (rows). Each of 12 slices
#' of the array corresponds to a month. Slice 1 corresponds to
#' estimated movements from January to February, etc. These were
#' created using a flat prior:
#' Dir(1, 1, 1, 1, 1, 1, 1, 1, 1)
#'
#' @format An array 9 rows, 9 columns and 12 slices
"flatFem"

#' Posterior Movement Probabilities for Females (Philip Hamilton Prior)
#'
#' A dataset containing the estimated movement probabilities from
#' one region (columns) to another region (rows). Each of 12 slices
#' of the array corresponds to a month. Slice 1 corresponds to
#' estimated movements from January to February, etc. These were
#' created using an informed prior:
#' Dir(1, 1, 1, 5.54, 1, 17.7, 1, 1, 1)
#'
#' @format An array 9 rows, 9 columns and 12 slices
"femMoveProb"
