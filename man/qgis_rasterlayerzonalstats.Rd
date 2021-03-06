% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_rasterlayerzonalstats.R
\name{qgis_rasterlayerzonalstats}
\alias{qgis_rasterlayerzonalstats}
\title{QGIS algorithm Raster layer zonal statistics}
\usage{
qgis_rasterlayerzonalstats(
  INPUT = qgisprocess::qgis_default_value(),
  BAND = qgisprocess::qgis_default_value(),
  ZONES = qgisprocess::qgis_default_value(),
  ZONES_BAND = qgisprocess::qgis_default_value(),
  REF_LAYER = qgisprocess::qgis_default_value(),
  OUTPUT_TABLE = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{INPUT}{\code{raster} - Input layer. Path to a raster layer.}

\item{BAND}{\code{band} - Band number. Integer value representing an existing raster band number.}

\item{ZONES}{\code{raster} - Zones layer. Path to a raster layer.}

\item{ZONES_BAND}{\code{band} - Zones band number. Integer value representing an existing raster band number.}

\item{REF_LAYER}{\code{enum}  of \verb{("Input layer", "Zones layer")} - Reference layer. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{OUTPUT_TABLE}{\code{sink} - Statistics. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Raster layer zonal statistics (native:rasterlayerzonalstats)
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT_TABLE - outputVector - Statistics
\item EXTENT - outputString - Extent
\item CRS_AUTHID - outputString - CRS authority identifier
\item WIDTH_IN_PIXELS - outputNumber - Width in pixels
\item HEIGHT_IN_PIXELS - outputNumber - Height in pixels
\item TOTAL_PIXEL_COUNT - outputNumber - Total pixel count
\item NODATA_PIXEL_COUNT - outputNumber - NODATA pixel count
}
}
}
