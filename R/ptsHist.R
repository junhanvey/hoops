#' A function to create a histogram of points scored by a given team
#'
#' @param x : The team to plot, in quotation marks
#' @param color: Color of outline, default is black
#' @param fill: Color to fill bars, default is orange
#' @param bins: Width of each bin, default of 10
#' @return a histogram of team point distribution
#'
#' @examples
#' #Plot point distribution of SUU's games.
#' ptsHist("Southern Utah", color = "black", fill = "red")
#'
#' @import
#'   ggplot2
#'   tidyverse
#'   magrittr
#'
#' @export


ptsHist <- function(team, color = "black", fill ="orange", bins = 5){
  #default is black and orange for basketball colors, adjust to team colors
  teamGms(cbbga23, team) |>
    dplyr::mutate(
        Points = case_when(
        (Away == team) ~ AwayPts,
        (Home == team) ~ HomePts, .default = 0)
    ) |>
    ggplot(aes(x = Points)) +
    geom_histogram(color = color, fill = fill, binwidth = bins)
}


