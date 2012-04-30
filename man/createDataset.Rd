\name{createDataset}
\alias{createDataset}
\title{Creating BigML Datasets}
\usage{
  createDataset(source_id, field_ids = NULL, name = NULL,
    size = NULL, ...)
}
\arguments{
  \item{source_id}{The relevant source id used to build the
  dataset.}

  \item{field_ids}{A list of field ids and field
  properties.  See example.}

  \item{name}{The name for the dataset.}

  \item{size}{The amount (in bytes) of the source to use
  for creating the dataset.}

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
  Creating BigML Datasets
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
\examples{
\dontrun{
# simple create dataset example
createDataset("source/1")
# configure a number of different parameters
createDataset("source/2", field_ids=c('000001'), name='test', size=10)
}
}
\author{
  Justin Donaldson \email{donaldson@bigml.com}
}
\references{
  \url{https://bigml.com/developers/datasets}
}
\seealso{
  Other dataset methods: \code{\link{getDataset}},
  \code{\link{listDatasets}}, \code{\link{quickDataset}}
}

