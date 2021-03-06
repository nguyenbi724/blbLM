% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/blbLM.R
\name{blb.pred.ci}
\alias{blb.pred.ci}
\title{Bag of Little Bootstrap Confidence Interval for Prediction (Linear Model)}
\usage{
blb.pred.ci(
  data,
  pred_df,
  y,
  x,
  m,
  r = 50,
  alpha = 0.05,
  parallel = FALSE,
  n_cores = 4
)
}
\arguments{
\item{data}{a dataframe or tibble object}

\item{pred_df}{a dataframe or tibble object with corresponding names for indepedent variables}

\item{y}{the name of the response variable}

\item{x}{the name(s) of the indepedent variables}

\item{m}{the number of group to split}

\item{r}{the number of iteration for each boot}

\item{alpha}{the significance level}

\item{parallel}{parallel compute the confidence interval}

\item{n_cores}{the number of processor to work on each task}
}
\value{
returns a matrix of the bootstrap ci
}
\description{
Bag of Little Bootstrap Confidence Interval for Prediction (Linear Model)
}
\examples{
pred_df <- dplyr::tibble(Sepal.Length = c(1,2,3,4,5), Sepal.Width = c(1,2,3,4,5))
blb.pred.ci(iris, pred_df, "Petal.Width", c("Sepal.Length", "Sepal.Width"), 10, 15, 0.05)
}
