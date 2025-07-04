% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_kmeansclustering.R
\name{qgis_kmeansclustering}
\alias{qgis_kmeansclustering}
\title{QGIS algorithm - K-means clustering}
\usage{
qgis_kmeansclustering(
  INPUT = qgisprocess:::qgis_default_value(),
  CLUSTERS = qgisprocess:::qgis_default_value(),
  METHOD = qgisprocess:::qgis_default_value(),
  FIELD_NAME = qgisprocess:::qgis_default_value(),
  SIZE_FIELD_NAME = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{source} - Input layer. Path to a vector layer.}

\item{CLUSTERS}{\code{number} - Number of clusters. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{METHOD}{\code{enum}  of \verb{("Farthest points", "K-means++")} - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{FIELD_NAME}{\code{string} - Cluster field name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{SIZE_FIELD_NAME}{\code{string} - Cluster size field name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OUTPUT}{\code{sink} - Clusters. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) K-means clustering (native:kmeansclustering). Calculates the 2D distance based k-means cluster number for each input feature. This algorithm calculates the 2D distance based k-means cluster number for each input feature.  If input geometries are lines or polygons, the clustering is based on the centroid of the feature.  References: Arthur, David & Vassilvitskii, Sergei. (2007). K-Means++: The Advantages of Careful Seeding. Proc. of the Annu. ACM-SIAM Symp. on Discrete Algorithms. 8.  Bhattacharya, Anup & Eube, Jan & Röglin, Heiko & Schmidt, Melanie. (2019). Noisy, Greedy and Not So Greedy k-means++
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Clusters
}
}
}
