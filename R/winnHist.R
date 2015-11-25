#' winnHist - Makes a Faceted Histogram of Winn et al. Right Whale Distribution
#'
#' @param winn Data frame of historical (pre-1986) distribution of right whales
#' @seealso These data are from Winn, et al. 1986. The Distributional Biology of the Right Whale (Eubalaena glacialis) in the
#' Western North Atlantic. Rep. Int. Whal. Comm. (Special Issue 10), pages 129-38.
#' @examples
#' winnHist(winn)
winnHist <- function(winn){

    winn$region <- factor(winn$region, levels = c('bof', 'rb', 'gom', 'ne', 'gsc', 'mida', 'seus'))
    ggplot(winn, aes(x = factor(month, levels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")),
                   y = number)) +
    geom_bar(stat = 'identity')+
    geom_text(aes(label = number), vjust = 1.5, colour = 'white', size = 4)+
    # facet_wrap(~ region, scales = 'free_y')+
    facet_grid(region ~ ., scales = 'free_y')+
    labs(x = 'Month', y = 'Number of Whales Seen')+
    theme_gray(base_size = 18)+
    ggtitle(label = 'Historical Distribution of Right Whales - from Winn et al. 1986')
}
