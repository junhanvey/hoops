#' A function to calculate the win/loss record of a given team
#'
#' @param x: The team to calculate record of
#' @return the win/loss record of the team, as
#'
#' @examples
#' #Calculate Southern Utah University's win loss record for the year of 2023
#' tmRec("Southern Utah")
#'
#' @import
#'   tidyverse,
#'   magrittr
#'
#'
#'
#' @export
#'
tmRec <- function(team){
  teamGms(cbbga23, team) |>
    dplyr::mutate(
      Result = case_when(
        (Away == team & Diff > 0) ~ "Win",
        (Home == team & Diff < 0) ~ "Win", .default = "Loss")
    ) |>
    summarize(wins = sum(Result == "Win"), loss = sum(Result == "Loss"), record = wins/(wins + loss)) |>
    as.numeric()

}


