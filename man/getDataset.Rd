\name{getDataset}
\alias{getDataset}
\title{Retrieving a BigML Dataset}
\usage{
  getDataset(source_id, include_overview = TRUE, ...)
}
\arguments{
  \item{source_id}{A string giving the name of the source
  id.}

  \item{include_overview}{A logical value indicating
  whether to provide a simple data frame overview of
  fields.}

  \item{\dots}{Arbitrary named arguments that are passed on
  to \code{\link{formEncodeURL}} in order to create
  form-encoded URL options.}
}
\value{
  \item{category}{numeric} \item{code}{numeric}
  \item{content_type}{character} \item{created}{character}
  \item{credits}{numeric} \item{description}{character}
  \item{fields}{data.frame (or list if flatten=FALSE)}
  \item{file_name}{character} \item{md5}{character}
  \item{name}{character} \item{number_of_datasets}{numeric}
  \item{number_of_models}{numeric}
  \item{number_of_predictions}{numeric}
  \item{private}{logical} \item{resource}{character}
  \item{size}{numeric} \item{source_parser}{list}
  \item{status}{list} \item{tags}{AsIs}
  \item{type}{numeric} \item{updated}{character}
}
\description{
  Retrieving a BigML Dataset
}
\details{
  This function needs to use id information from existing R
  resources.  See the references for more details.
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
  \code{\link{listDatasets}}, \code{\link{quickDataset}}
}

