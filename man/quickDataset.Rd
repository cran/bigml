\name{quickDataset}
\alias{quickDataset}
\title{Quickly Creating BigML Datasets}
\usage{
  quickDataset(data, fields = names(data),
    name = paste(deparse(substitute(data)), "'s dataset", sep = ""),
    size = NULL, ...)
}
\arguments{
  \item{data}{A matrix or data frame containing data to
  upload to bigml.}

  \item{name}{A string giving the name for the dataset.}

  \item{fields}{A vector of names in \code{data} that
  should be used for creating the dataset.}

  \item{size}{A numeric value giving the amount (in bytes)
  of the source to use.}

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
  Quickly Creating BigML Datasets
}
\details{
  quickDataset will take its "data" dataframe argument and
  attempt to create an equivalent BigML dataset using
  \code{\link{quickSource}}.  R "numeric" class fields will
  become "numeric" fields in the BigML dataset.  R
  "character" class fields become "text" fields.  R
  "factor" fields become "categorical" fields. However, if
  there are too many factors, BigML may convert the field
  to text.  It is possible to specify the fields to include
  using the \code{fields} argument.  This can be a a simple
  list of names that were present in the \code{data}
  argument.  See references for more details.
}
\note{
  While all BigML API functions are asynchronous, this
  function will continue polling the BigML API until the
  operation is complete.
}
\examples{
\dontrun{
# simple example
iris.d = quickDataset(iris)
# configure a number of different parameters
iris.d2 = quickDataset(iris, fields = c('Species', 'Sepal.length'),
	name='test', size=10000)
}
}
\author{
  Justin Donaldson \email{donaldson@bigml.com}
}
\references{
  \url{https://bigml.com/developers/datasets}
}
\seealso{
  Other dataset methods: \code{\link{createDataset}},
  \code{\link{getDataset}}, \code{\link{listDatasets}}

  Other quick methods: \code{\link{quickModel}},
  \code{\link{quickPrediction}}, \code{\link{quickSource}}
}

