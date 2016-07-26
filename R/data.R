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

#' Summarised Answers from Round Two of Expert Elicitation on Right Whale Movement - June 2015
#'
#' A dataset containing the summarised answers from 8 different experts on 6 different
#' questions pertaining to movements of right whales in and around the mid-Atlantic
#' region. Three questions were on Adult male right whales; 3 questions were on Adult
#' female right whales. List elements correspond to each question.
#'
#' @format A data frame with 6 rows and 4 variables:
#' \itemize{
#' \item confRawMean: mean of all 8 experts' answers for raw confidence (1-100)
#' \item confScaleMean: mean of all 8 experts' answers for scaled confidence (1-622)
#' \item moveMean: mean movements of number of whales out of 100
#' \item qname: the expert's name
#' }
"sumstat"

#' Answers from Round One of Expert Elicitation on Right Whale Movement - November 2013
#'
#' A dataset containing the summarised answers from 10 different experts on 14 different
#' questions pertaining to seasonal distribution of right whales (Questions 1-8) and
#' the movements of right whales in and around the mid-Atlantic region (Questions 9-14).
#'
#' @format A data frame with 140 rows and 8 variables:
#' \itemize{
#' \item question: the number of each question (1-14)
#' \item qname: the appreviated name of each question, e.g. q1round2, q14round2
#' \item topic: brief textual description of the topic of each question
#' \item min: lower bound for the experts answer
#' \item max: upper bound for the experts answer
#' \item mode: mode of the answer
#' \item weighting: how much confidence the expert has in their answer (1-100)
#' \item expert: numerical identifier of the expert (1-10)
#' }
"nov2013"

#' Answers from Second Expert Elicitation on Right Whale Movement - June 2015
#'
#' A dataset containing the summarised answers from 8 different experts on 6 different
#' questions pertaining to the movements of right whales in and around the mid-Atlantic
#' region (Questions 9-14).
#'
#' @format A data frame with 48 rows and 7 variables:
#' \itemize{
#' \item inputConfRaw: the raw value the expert entered for their confidence around their answers (1-100)
#' \item inputConfScale: the response for inputConfRaw rescaled range (1-622)
#' \item moveMIDA: Response for number of whales out of 100 moving into/out of the MIDA.
#' \item gender: the sex of the animal
#' \item expert: Numerical identifier of the expert (1-10)
#' \item question: the number of each question ("q9round2", "q10round2", "q11round2", "q12round2", "q13round2", "q14round2")
#' }
"june2015"

#' Answers from Round Two of Expert Elicitation on Right Whale Movement - June 2015
#'
#' A dataset in list format containing the answers from 8 different experts on 6 different
#' questions pertaining to movements of right whales in and around the mid-Atlantic
#' region. Three questions were on Adult male right whales; 3 questions were on Adult
#' female right whales. List elements correspond to each question.
#'
#' @seealso We used a list because the number of variables changes in each question.
#' @format A list with 6 elements, corresponding to 6 questions. Variables are:
#' \itemize{
#' \item inputConfRaw: the raw value the expert entered for their confidence around their answers (1-100)
#' \item inputConfScale: the response for inputConfRaw rescaled range (1-622)
#' \item moveNortherntoMida: Response for number of whales out of 100 moving from Northern regions to mid-Atlantic. note that the variable number changes from 2 to 3 for questions 2 and 5.
#' \item gender: the sex of the animal
#' \item expert: the expert's numerical identifier
#' \item question: the number of each question ("q9round2", "q10round2", "q11round2", "q12round2", "q13round2", "q14round2")
#' }
"dfList"

#' Parsed-out Reformatted Priors from Round Two of Expert Elicitation of Right Whale Movement - June 2015
#'
#' A recursive list that holds the reformatted priors from each individual
#' expert for each question. There are 6 elements in the list, corresponding
#' to each of the 6 questions. Within each of these 6 elements, there are
#' 8 elements, corresponding to each of the 8 experts. So there are 48
#' elements in total that we'll use to choose priors as we iterate through
#' the gibbs loop, i.e. they are the inputs to calculating the c coefficients
#' and then the K coefficients. We then use the Kth prior each time through
#' the loop.
#'
#' @format A recursive list with 6 elements, each of which is an 8 element list
"allqs"

#' Squashed Reformatted Priors from Round Two of Expert Elicitation of Right Whale Movement - June 2015
#'
#' A recursive list that holds the reformatted priors from each individual
#' expert for each sex. In \code{allqs} I have 6 elements each of which
#' contains 8 experts. However, what I really want is to combine those 6 into
#' two elements - one for each gender. That is what this list provides.
#'
#' @format A recursive list with 2 elements, each of which is an 8 element list
"priorList"
