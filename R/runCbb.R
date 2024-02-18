#' College Basketball App
#'
#' This function allows the college basketball app to run. It is an app that
#' allows you to enter the name of a college basketball team and view data on
#' their performance in 2023, as well as a histogram of their points scored
#' @export

runCbb <- function() {
  appDir <- system.file("shiny", "cbbApp", package = "hoops")
  if (appDir == "") {
    stop("Could not find example directory. Try re-installing `hoops`.",
         call. = FALSE)
  }

  shiny::runApp(appDir, display.mode = "normal")
}
