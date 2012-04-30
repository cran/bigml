\name{listDatasets}
\alias{listDatasets}
\title{Listing BigML Datasets}
\usage{
  listDatasets(flatten = TRUE, datasets_only = TRUE, ...)
}
\arguments{
  \item{flatten}{A logical value indicating whether to
  flatten the response into a dataframe.}

  \item{datasets_only}{A logical value indicating whether
  to only return the data frame of field information (only
  valid if \code{flatten} is \code{TRUE}).}

  \item{\dots}{Arbitrary named arguments that are passed on
  to \code{\link{formEncodeURL}} in order to create
  form-encoded URL options.}
}
\value{
  If flatten is TRUE, and datasets_only = TRUE a data frame
  of: \item{category}{numeric} \item{code}{numeric}
  \item{columns}{numeric} \item{created}{character}
  \item{credits}{numeric} \item{description}{character}
  \item{locale}{character} \item{name}{character}
  \item{number_of_models}{numeric}
  \item{number_of_predictions}{numeric}
  \item{private}{logical} \item{resource}{character}
  \item{rows}{numeric} \item{size}{numeric}
  \item{source}{character} \item{source_status}{logical}
  \item{status.bytes}{numeric} \item{status.code}{numeric}
  \item{status.elapsed}{numeric}
  \item{status.message}{character}
  \item{status.serialized_rows}{numeric}
  \item{updated}{character}

  If flatten is TRUE and datasets_only = FALSE a list of:
  \item{meta}{list} \item{datasets}{data.frame}
  \item{fields}{data.frame}

  If flatten is FALSE a list of: \item{meta}{list}
  \item{objects}{list}

  see references for more details
}
\description{
  Listing BigML Datasets
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
  \url{https://bigml.com/developers/datasets}
}
\seealso{
  Other dataset methods: \code{\link{createDataset}},
  \code{\link{getDataset}}, \code{\link{quickDataset}}
}

