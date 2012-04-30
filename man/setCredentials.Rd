\name{setCredentials}
\alias{setCredentials}
\title{Set BigML API authentication credentials}
\usage{
  setCredentials(username, api_key)
}
\arguments{
  \item{username}{use the given username for all subsequent
  API requests}

  \item{api_key}{use the given api key for all subsequent
  API requests}
}
\description{
  Set BigML API authentication credentials
}
\details{
  This function sets default username and api_key
  information for subsequent BigML API access calls.  The
  relevent username and key are stored in the R system
  environment variables.  So, it's also possible to set
  these variables by setting BIGMLUSER and BIGMLAPIKEY in
  an .Renviron file.
}
\examples{
\dontrun{
# replace with your valid credentials:
	setCredentials('some_username', 'some_key')
}
}
\author{
  Justin Donaldson \email{donaldson@bigml.com}
}

