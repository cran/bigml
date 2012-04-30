\name{createModel}
\alias{createModel}
\title{Creating BigML Models}
\usage{
  createModel(dataset_id, holdout = 0.2,
    input_field_ids = NULL, name = NULL,
    objective_field_ids = NULL, range = NULL, ...)
}
\arguments{
  \item{dataset_id}{the relevant dataset_id used to create
  the model.}

  \item{holdout}{the ratio of instances to reserve for
  post-train pruning.}

  \item{input_field_ids}{a vector of field ids to use for
  training.}

  \item{name}{the name to give to the model.}

  \item{objective_field_ids}{a vector of objective fields
  used for training.}

  \item{range}{a vector of two values that define a range
  of instances from the dataset to train on.}

  \item{\dots}{Arbitrary named arguments that are passed on
  to \code{\link{formEncodeURL}} in order to create
  form-encoded URL options.}
}
\value{
  model_return
}
\description{
  Creating BigML Models
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
# simple example
m1 = createModel("dataset/1")
# configure a number of different parameters
m2 = createModel("dataset/2", input_field_ids=c('000001'),
	objective_field_ids='000003', name='test', holdout=.4, range = c(10,1000))
}
}
\author{
  Justin Donaldson \email{donaldson@bigml.com}
}
\references{
  \url{https://bigml.com/developers/models}

  \url{https://bigml.com/developers/datasets}
}
\seealso{
  Other model methods: \code{\link{getModel}},
  \code{\link{listModels}}, \code{\link{quickModel}}
}

