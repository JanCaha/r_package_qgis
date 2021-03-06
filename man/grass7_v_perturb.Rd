% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass7_v_perturb.R
\name{grass7_v_perturb}
\alias{grass7_v_perturb}
\title{QGIS algorithm v.perturb}
\usage{
grass7_v_perturb(
  input = qgisprocess::qgis_default_value(),
  distribution = qgisprocess::qgis_default_value(),
  parameters = qgisprocess::qgis_default_value(),
  minimum = qgisprocess::qgis_default_value(),
  seed = qgisprocess::qgis_default_value(),
  output = qgisprocess::qgis_default_value(),
  GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(),
  GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(),
  GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{input}{\code{source} - Vector points to be spatially perturbed. Path to a vector layer.}

\item{distribution}{\code{enum}  of \verb{("uniform", "normal")} - Distribution of perturbation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{parameters}{\code{string} - Parameter(s) of distribution (uniform: maximum; normal: mean and stddev). String value.}

\item{minimum}{\code{number} - Minimum deviation in map units. A numeric value.}

\item{seed}{\code{number} - Seed for random number generation. A numeric value.}

\item{output}{\code{vectorDestination} - Perturbed. Path for new vector layer.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_SNAP_TOLERANCE_PARAMETER}{\code{number} - v.in.ogr snap tolerance (-1 = no snap). A numeric value.}

\item{GRASS_MIN_AREA_PARAMETER}{\code{number} - v.in.ogr min area. A numeric value.}

\item{GRASS_OUTPUT_TYPE_PARAMETER}{\code{enum}  of \verb{("auto", "point", "line", "area")} - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{GRASS_VECTOR_DSCO}{\code{string} - v.out.ogr output data source options (dsco). String value.}

\item{GRASS_VECTOR_LCO}{\code{string} - v.out.ogr output layer options (lco). String value.}

\item{GRASS_VECTOR_EXPORT_NOCAT}{\code{boolean} - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by GRASS v.perturb (grass7:v.perturb)
}
\details{
\subsection{Outputs description}{
\itemize{
\item output - outputVector - Perturbed
}
}
}
