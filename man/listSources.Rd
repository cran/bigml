\name{listSources}
\alias{listSources}
\title{Listing BigML Sources}
\usage{
  listSources(flatten = TRUE, sources_only = TRUE, ...)
}
\arguments{
  \item{flatten}{A logical value indicating whether to
  flatten the response into a dataframe.}

  \item{sources_only}{A logical value indicating whether to
  only return the data frame of source information (only
  valid if \code{flatten} is \code{TRUE}).}

  \item{\dots}{Arbitrary named arguments that are passed on
  to \code{\link{formEncodeURL}} in order to create
  form-encoded URL options.}
}
\value{
  If flatten is TRUE, and sources_only = TRUE a data frame
  of: \item{category}{numeric} \item{code}{numeric}
  \item{content_type}{factor} \item{created}{factor}
  \item{credits}{numeric} \item{description}{factor}
  \item{file_name}{factor} \item{md5}{factor}
  \item{name}{factor} \item{number_of_datasets}{numeric}
  \item{number_of_models}{numeric}
  \item{number_of_predictions}{numeric}
  \item{private}{logical} \item{resource}{factor}
  \item{size}{numeric} \item{source_parser.header}{logical}
  \item{source_parser.locale}{factor}
  \item{source_parser.missing_tokens}{factor}
  \item{source_parser.quote}{factor}
  \item{source_parser.separator}{factor}
  \item{source_parser.trim}{logical}
  \item{status.code}{numeric}
  \item{status.elapsed}{numeric}
  \item{status.message}{factor} \item{type}{numeric}
  \item{updated}{factor}

  If flatten is TRUE and sources_only = FALSE a list of:
  \item{meta}{list} \item{sources}{data.frame}
  \item{fields}{data.frame}

  If flatten is FALSE a list of: \item{meta}{list}
  \item{objects}{list}

  see references for more details
}
\description{
  Listing BigML Sources
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
  \url{https://bigml.com/developers/sources}
}
\seealso{
  Other source methods: \code{\link{createSource}},
  \code{\link{getSource}}, \code{\link{quickSource}}
}

