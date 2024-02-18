#' A function to create a bar chart of team wins and losses
#'
#' @param x : The team to plot, in quotation marks
#' @param colors: Colors for wins and losses, respectively
#'
#' @return a bar chart with a column for wins and losses
#'
#' @examples
#' # Plot SUU's games, divided into wins and losses
#' winLoss("Southern Utah", colors = c("black", "red"))
#'
#' @import
#'   tidyverse
#'   ggplot2
#'   magrittr
#'
#' @export

winLoss <- function(team, colors){ #default is black and orange for basketball colors, adjust to team colors
  teamGms(cbbga23, team) |>
    dplyr::mutate(
      Result = case_when(
        (Away == team & Diff > 0) ~ "Win",
        (Home == team & Diff < 0) ~ "Win", .default = "Loss")
    ) |>
    ggplot(aes(x = Result, fill = Result)) +
    geom_bar() +
    scale_fill_manual(values = c(colors))

}


