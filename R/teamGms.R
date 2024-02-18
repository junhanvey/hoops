#' A function to filter the cbbga23 data by games only played by a certain team
#'
#' @param data: the data to refer to (cbbga23)
#' @param team: The team to filter by, in quotation marks
#' @return a tibble of games played by said team
#'
#' @examples
#' #filter for only games played by Southern Utah University
#' teamGms(cbbga23, "Southern Utah")
#'
#' @import
#'     tidyverse
#'
#' @export

teamGms <- function(data, team) {
  tmDf <- data |>
    filter(Away == team | Home == team)
  tmDf
}




