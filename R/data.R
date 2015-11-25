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

#' Historical Sightings Data from Winn et al. 1986
#'
#' A dataset containing summary information taken from Figure 4 in Winn
#' et al. 1986. The variables are as follows:
#'
#' @format A data frame with 84 rows and 3 variables:
#' \itemize{
#' \item region: sighting region in which the whales were tallied (seus, mida, ne, gom, gsc, bof, rb)
#' \item month: month when whales were seen (Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec)
#' \item number: number of whales sighted (0, n)
#' }
#' @seealso The citation for this is Winn, et al. 1986. The Distributional Biology
#' of the Right Whale (\emph{Eubalaena glacialis}) in the Western North Atlantic.
#' Rep. Int. Whal. Comm. (Special Issue 10), pages 129-38.
#' Regions were taken from Figures 1 and 4. From Figure 4, I lumped Cape Hatteras, Mid-Atlantic,
#' and Long Island because these areas most closely approximate the regions from
#' NEAq's sightings catalog.
"winn"
