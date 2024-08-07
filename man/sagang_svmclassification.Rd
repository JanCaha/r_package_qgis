% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_svmclassification.R
\name{sagang_svmclassification}
\alias{sagang_svmclassification}
\title{QGIS algorithm - Svm classification}
\usage{
sagang_svmclassification(
  GRIDS = qgisprocess:::qgis_default_value(),
  CLASSES = qgisprocess:::qgis_default_value(),
  CLASSES_LUT = qgisprocess:::qgis_default_value(),
  SCALING = qgisprocess:::qgis_default_value(),
  MESSAGE = qgisprocess:::qgis_default_value(),
  MODEL_SRC = qgisprocess:::qgis_default_value(),
  MODEL_LOAD = qgisprocess:::qgis_default_value(),
  ROI = qgisprocess:::qgis_default_value(),
  ROI_ID = qgisprocess:::qgis_default_value(),
  MODEL_SAVE = qgisprocess:::qgis_default_value(),
  SVM_TYPE = qgisprocess:::qgis_default_value(),
  KERNEL_TYPE = qgisprocess:::qgis_default_value(),
  DEGREE = qgisprocess:::qgis_default_value(),
  GAMMA = qgisprocess:::qgis_default_value(),
  COEF0 = qgisprocess:::qgis_default_value(),
  COST = qgisprocess:::qgis_default_value(),
  NU = qgisprocess:::qgis_default_value(),
  EPS_SVR = qgisprocess:::qgis_default_value(),
  CACHE_SIZE = qgisprocess:::qgis_default_value(),
  EPS = qgisprocess:::qgis_default_value(),
  SHRINKING = qgisprocess:::qgis_default_value(),
  PROBABILITY = qgisprocess:::qgis_default_value(),
  CROSSVAL = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{GRIDS}{\code{multilayer} - Grids. .}

\item{CLASSES}{\code{rasterDestination} - Classification. Path for new raster layer.}

\item{CLASSES_LUT}{\code{vectorDestination} - Look-up Table. Path for new vector layer.}

\item{SCALING}{\code{enum}  of \verb{("(0) none", "(1) normalize (0-1)", "(2) standardize")} - Scaling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{MESSAGE}{\code{boolean} - Verbose Messages. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{MODEL_SRC}{\code{enum}  of \verb{("(0) create from training areas", "(1) restore from file")} - Model Source. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{MODEL_LOAD}{\code{file} - Restore Model from File. Path to a file.}

\item{ROI}{\code{source} - Training Areas. Path to a vector layer.}

\item{ROI_ID}{\code{field} - Class Identifier. The name of an existing field. ; delimited list of existing field names.}

\item{MODEL_SAVE}{\code{file} - Store Model to File. Path to a file.}

\item{SVM_TYPE}{\code{enum}  of \verb{("(0) C-SVC", "(1) nu-SVC", "(2) one-class SVM", "(3) epsilon-SVR", "(4) nu-SVR")} - SVM Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{KERNEL_TYPE}{\code{enum}  of \verb{("(0) linear", "(1) polynomial", "(2) radial basis function", "(3) sigmoid")} - Kernel Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{DEGREE}{\code{number} - Degree. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{GAMMA}{\code{number} - Gamma. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{COEF0}{\code{number} - coef0. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{COST}{\code{number} - C. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{NU}{\code{number} - nu-SVR. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{EPS_SVR}{\code{number} - SVR Epsilon. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{CACHE_SIZE}{\code{number} - Cache Size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{EPS}{\code{number} - Epsilon. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{SHRINKING}{\code{boolean} - Shrinking. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{PROBABILITY}{\code{boolean} - Probability Estimates. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{CROSSVAL}{\code{number} - Cross Validation. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Svm classification (sagang:svmclassification). ---------------- Arguments ----------------  GRIDS: Grids 	Argument type:	multilayer CLASSES: Classification 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer CLASSES_LUT: Look-up Table 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer SCALING: Scaling 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: (0) none 		- 1: (1) normalize (0-1) 		- 2: (2) standardize 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' MESSAGE: Verbose Messages 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MODEL_SRC: Model Source 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) create from training areas 		- 1: (1) restore from file 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' MODEL_LOAD: Restore Model from File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file ROI: Training Areas 	Argument type:	source 	Acceptable values: 		- Path to a vector layer ROI_ID: Class Identifier 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names MODEL_SAVE: Store Model to File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file SVM_TYPE: SVM Type 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) C-SVC 		- 1: (1) nu-SVC 		- 2: (2) one-class SVM 		- 3: (3) epsilon-SVR 		- 4: (4) nu-SVR 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' KERNEL_TYPE: Kernel Type 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: (0) linear 		- 1: (1) polynomial 		- 2: (2) radial basis function 		- 3: (3) sigmoid 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DEGREE: Degree 	Default value:	3 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression GAMMA: Gamma 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression COEF0: coef0 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression COST: C 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NU: nu-SVR 	Default value:	0.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EPS_SVR: SVR Epsilon 	Default value:	0.1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CACHE_SIZE: Cache Size 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EPS: Epsilon 	Default value:	0.001 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SHRINKING: Shrinking 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression PROBABILITY: Probability Estimates 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CROSSVAL: Cross Validation 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item CLASSES - outputRaster - Classification
\item CLASSES_LUT - outputVector - Look-up Table
}
}
}
