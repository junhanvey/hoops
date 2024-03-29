% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ptsHist.R
\name{ptsHist}
\alias{ptsHist}
\title{A function to create a histogram of points scored by a given team}
\usage{
ptsHist(team, color = "black", fill = "orange", bins = 5)
}
\arguments{
\item{x}{: The team to plot, in quotation marks}

\item{color:}{Color of outline, default is black}

\item{fill:}{Color to fill bars, default is orange}

\item{bins:}{Width of each bin, default of 10}
}
\value{
a histogram of team point distribution
}
\description{
A function to create a histogram of points scored by a given team
}
\examples{
#Plot point distribution of SUU's games.
ptsHist("Southern Utah", color = "black", fill = "red")

}
