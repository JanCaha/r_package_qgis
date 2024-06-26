% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_overlandflowkinematicwave.R
\name{sagang_overlandflowkinematicwave}
\alias{sagang_overlandflowkinematicwave}
\title{QGIS algorithm - Overland flow (kinematic wave)}
\usage{
sagang_overlandflowkinematicwave(
  DEM = qgisprocess:::qgis_default_value(),
  ROUGHNESS = qgisprocess:::qgis_default_value(),
  ROUGHNESS_DEFAULT = qgisprocess:::qgis_default_value(),
  FLOW = qgisprocess:::qgis_default_value(),
  GAUGES_FLOW = qgisprocess:::qgis_default_value(),
  GAUGES = qgisprocess:::qgis_default_value(),
  TIME_SPAN = qgisprocess:::qgis_default_value(),
  TIME_STEP = qgisprocess:::qgis_default_value(),
  TIME_UPDATE = qgisprocess:::qgis_default_value(),
  MAXITER = qgisprocess:::qgis_default_value(),
  EPSILON = qgisprocess:::qgis_default_value(),
  ROUTING = qgisprocess:::qgis_default_value(),
  DYNAMIC = qgisprocess:::qgis_default_value(),
  FLOW_RESET = qgisprocess:::qgis_default_value(),
  P_RATE = qgisprocess:::qgis_default_value(),
  P_DISTRIB = qgisprocess:::qgis_default_value(),
  P_THRESHOLD = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{DEM}{\code{raster} - Elevation. Path to a raster layer.}

\item{ROUGHNESS}{\code{raster} - Manning Roughness. Path to a raster layer.}

\item{ROUGHNESS_DEFAULT}{\code{number} - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{FLOW}{\code{rasterDestination} - Runoff. Path for new raster layer.}

\item{GAUGES_FLOW}{\code{vectorDestination} - Flow at Gauges. Path for new vector layer.}

\item{GAUGES}{\code{source} - Gauges. Path to a vector layer.}

\item{TIME_SPAN}{\code{number} - Simulation Time (h). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{TIME_STEP}{\code{number} - Simulation Time Step (min). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{TIME_UPDATE}{\code{number} - Map Update Frequency (min). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{MAXITER}{\code{number} - Maximum Iterations. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{EPSILON}{\code{number} - Epsilon. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{ROUTING}{\code{enum}  of \verb{("(0) Deterministic 8", "(1) Multiple Flow Direction")} - Flow Routing. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{DYNAMIC}{\code{boolean} - Dynamic Water Surface. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{FLOW_RESET}{\code{boolean} - Reset. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{P_RATE}{\code{number} - Precipitation (mm). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{P_DISTRIB}{\code{enum}  of \verb{("(0) Homogenous", "(1) Above Elevation", "(2) Left Half")} - Precipitation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{P_THRESHOLD}{\code{number} - Above Elevation. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Overland flow (kinematic wave) (sagang:overlandflowkinematicwave). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer ROUGHNESS: Manning Roughness (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer ROUGHNESS_DEFAULT: Default 	Default value:	0.03 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FLOW: Runoff 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer GAUGES_FLOW: Flow at Gauges 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer GAUGES: Gauges (optional) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer TIME_SPAN: Simulation Time (h) 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TIME_STEP: Simulation Time Step (min) 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TIME_UPDATE: Map Update Frequency (min) 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MAXITER: Maximum Iterations 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EPSILON: Epsilon 	Default value:	0.0001 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ROUTING: Flow Routing 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Deterministic 8 		- 1: (1) Multiple Flow Direction 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DYNAMIC: Dynamic Water Surface 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FLOW_RESET: Reset 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression P_RATE: Precipitation (mm) 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression P_DISTRIB: Precipitation 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Homogenous 		- 1: (1) Above Elevation 		- 2: (2) Left Half 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' P_THRESHOLD: Above Elevation 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item FLOW - outputRaster - Runoff
\item GAUGES_FLOW - outputVector - Flow at Gauges
}
}
}
