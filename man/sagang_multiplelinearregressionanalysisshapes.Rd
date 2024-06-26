% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_multiplelinearregressionanalysisshapes.R
\name{sagang_multiplelinearregressionanalysisshapes}
\alias{sagang_multiplelinearregressionanalysisshapes}
\title{QGIS algorithm - Multiple linear regression analysis (shapes)}
\usage{
sagang_multiplelinearregressionanalysisshapes(
  TABLE = qgisprocess:::qgis_default_value(),
  RESULTS = qgisprocess:::qgis_default_value(),
  DEPENDENT = qgisprocess:::qgis_default_value(),
  INFO_COEFF = qgisprocess:::qgis_default_value(),
  INFO_MODEL = qgisprocess:::qgis_default_value(),
  INFO_STEPS = qgisprocess:::qgis_default_value(),
  METHOD = qgisprocess:::qgis_default_value(),
  P_VALUE = qgisprocess:::qgis_default_value(),
  CROSSVAL = qgisprocess:::qgis_default_value(),
  CROSSVAL_K = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{TABLE}{\code{source} - Shapes. Path to a vector layer.}

\item{RESULTS}{\code{vectorDestination} - Results. Path for new vector layer.}

\item{DEPENDENT}{\code{field} - Dependent Variable. The name of an existing field. ; delimited list of existing field names.}

\item{INFO_COEFF}{\code{vectorDestination} - Details: Coefficients. Path for new vector layer.}

\item{INFO_MODEL}{\code{vectorDestination} - Details: Model. Path for new vector layer.}

\item{INFO_STEPS}{\code{vectorDestination} - Details: Steps. Path for new vector layer.}

\item{METHOD}{\code{enum}  of \verb{("(0) include all", "(1) forward", "(2) backward", "(3) stepwise")} - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{P_VALUE}{\code{number} - Significance Level. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{CROSSVAL}{\code{enum}  of \verb{("(0) none", "(1) leave one out", "(2) 2-fold", "(3) k-fold")} - Cross Validation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{CROSSVAL_K}{\code{number} - Cross Validation Subsamples. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Multiple linear regression analysis (shapes) (sagang:multiplelinearregressionanalysisshapes). ---------------- Arguments ----------------  TABLE: Shapes 	Argument type:	source 	Acceptable values: 		- Path to a vector layer RESULTS: Results 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer DEPENDENT: Dependent Variable 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names INFO_COEFF: Details: Coefficients 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer INFO_MODEL: Details: Model 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer INFO_STEPS: Details: Steps 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer METHOD: Method 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) include all 		- 1: (1) forward 		- 2: (2) backward 		- 3: (3) stepwise 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' P_VALUE: Significance Level 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CROSSVAL: Cross Validation 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) none 		- 1: (1) leave one out 		- 2: (2) 2-fold 		- 3: (3) k-fold 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CROSSVAL_K: Cross Validation Subsamples 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item INFO_COEFF - outputVector - Details: Coefficients
\item INFO_MODEL - outputVector - Details: Model
\item INFO_STEPS - outputVector - Details: Steps
\item RESULTS - outputVector - Results
}
}
}
