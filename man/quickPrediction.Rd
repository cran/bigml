\name{quickPrediction}
\alias{quickPrediction}
\title{Quickly Creating BigML Predictions}
\usage{
  quickPrediction(model, values, name = NULL,
    prediction_only = TRUE, ...)
}
\arguments{
  \item{model}{A character string or response object
  containing a valid model id value.}

  \item{values}{A named vector or list of elements to
  retrieve a prediction for}

  \item{name}{A string giving the name of the prediction.}

  \item{prediction_only}{if TRUE, only the predicted value
  is returned.  Otherwise, the full API response is
  returned.}

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

  A numeric or string value giving the prediction.
}
\description{
  Quickly Creating BigML Predictions
}
\details{
  quickPrediction can operate on a model id string, or a
  model response object from an earlier request.  The
  \code{values} are a list of named elements that are used
  as input.
}
\note{
  While all BigML API functions are asynchronous, this
  function will continue polling the BigML API until the
  operation is complete.
}
\examples{
\dontrun{
quickPrediction("model/1", list(Sepal.Width=3.5, Petal.Length=1.4))
# 'setosa'
}
}
\author{
  Justin Donaldson \email{donaldson@bigml.com}
}
\references{
  \url{https://bigml.com/developers/predictions}
}
\seealso{
  Other prediction methods: \code{\link{createPrediction}},
  \code{\link{getPrediction}}

  Other quick methods: \code{\link{quickDataset}},
  \code{\link{quickModel}}, \code{\link{quickSource}}
}

