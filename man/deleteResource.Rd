\name{deleteResource}
\alias{deleteResource}
\title{Deleting BigML Resources}
\usage{
  deleteResource(resource_id, ...)
}
\arguments{
  \item{resource_id}{the resource to delete.}

  \item{\dots}{Arbitrary named arguments that are passed on
  to \code{\link{formEncodeURL}} in order to create
  form-encoded URL options.}
}
\value{
  TRUE if successful, FALSE otherwise.
}
\description{
  Deleting BigML Resources
}
\details{
  This function deletes bigml resources referenced by their
  resource id.
}
\examples{
\dontrun{
# replace with your valid credentials:
	deleteResource("source/1")
}
}
\author{
  Justin Donaldson \email{donaldson@bigml.com}
}

