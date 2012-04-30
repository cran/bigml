\name{quickModel}
\alias{quickModel}
\title{Quickly Creating BigML Models}
\usage{
  quickModel(data, holdout = 0.2,
    input_fields = names(data),
    objective_fields = tail(names(data), n = 1),
    name = paste(deparse(substitute(data)), "'s model", sep = ""),
    range = NULL, ...)
}
\arguments{
  \item{data}{A matrix or data frame containing data to
  upload to bigml.}

  \item{holdout}{A numeric value giving the ratio of
  dataset instances to use as a holdout set for post-train
  pruning.}

  \item{input_fields}{A vector of string names to use for
  training.}

  \item{objective_fields}{A single string value to use as
  an objective field (objective_fields is plural for future
  use).}

  \item{name}{A string giving the name of the model.}

  \item{range}{A two element numeric vector that defines a
  range over the dataset in which to train on.}

  \item{\dots}{Arbitrary named arguments that are passed on
  to \code{\link{formEncodeURL}} in order to create
  form-encoded URL options.}
}
\value{
  \item{category}{numeric} \item{code}{numeric}
  \item{columns}{numeric} \item{created}{character}
  \item{credits}{numeric} \item{dataset}{character}
  \item{dataset_status}{logical}
  \item{description}{character} \item{holdout}{numeric}
  \item{input_fields}{character} \item{locale}{character}
  \item{max_columns}{numeric} \item{max_rows}{numeric}
  \item{model}{list} \item{name}{character}
  \item{number_of_predictions}{numeric}
  \item{objective_fields}{character}
  \item{private}{logical} \item{range}{numeric}
  \item{resource}{character} \item{rows}{numeric}
  \item{size}{numeric} \item{source}{character}
  \item{source_status}{logical} \item{status}{list}
  \item{tags}{AsIs} \item{updated}{character}
}
\description{
  Quickly Creating BigML Models
}
\details{
  quickModel will take its "data" dataframe argument and
  attempt to create a dataset using
  \code{\link{quickDataset}}.  It is possible to specify
  the input_fields and objective_fields using the simple
  names from the \code{data} argument.
}
\note{
  While all BigML API functions are asynchronous, this
  function will continue polling the BigML API until the
  operation is complete.
}
\author{
  Justin Donaldson \email{donaldson@bigml.com}
}
\references{
  \url{https://bigml.com/developers/models}
}
\seealso{
  Other model methods: \code{\link{createModel}},
  \code{\link{getModel}}, \code{\link{listModels}}

  Other quick methods: \code{\link{quickDataset}},
  \code{\link{quickPrediction}}, \code{\link{quickSource}}
}

