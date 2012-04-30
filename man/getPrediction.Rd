\name{getPrediction}
\alias{getPrediction}
\title{Retrieving a BigML Prediction}
\usage{
  getPrediction(prediction_id, ...)
}
\arguments{
  \item{prediction_id}{the id of the prediction resource.}

  \item{\dots}{Arbitrary named arguments that are passed on
  to \code{\link{formEncodeURL}} in order to create
  form-encoded URL options.}
}
\value{
  atomic character or numeric value if prediction_only is
  TRUE, else return: \item{category}{numeric}
  \item{code}{numeric} \item{created}{character}
  \item{credits}{numeric} \item{dataset}{character}
  \item{dataset_status}{logical}
  \item{description}{character} \item{fields}{list}
  \item{input_data}{numeric} \item{locale}{character}
  \item{model}{character} \item{model_status}{logical}
  \item{name}{character} \item{objective_fields}{character}
  \item{prediction}{character} \item{prediction_path}{list}
  \item{private}{logical} \item{resource}{character}
  \item{source}{character} \item{source_status}{logical}
  \item{status}{list} \item{tags}{AsIs}
  \item{updated}{character}
}
\description{
  Retrieving a BigML Prediction
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
  \url{https://bigml.com/developers/predictions}
}
\seealso{
  Other prediction methods: \code{\link{createPrediction}},
  \code{\link{quickPrediction}}
}

