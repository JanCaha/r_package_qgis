##' QGIS Algorithm provided by QGIS (native c++) K-means clustering (native:kmeansclustering). Calculates the 2D distance based k-means cluster number for each input feature.  If input geometries are lines or polygons, the clustering is based on the centroid of the feature.
##'
##' @title QGIS algorithm - K-means clustering
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param CLUSTERS `number` - Number of clusters. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FIELD_NAME `string` - Cluster field name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SIZE_FIELD_NAME `string` - Cluster size field name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Clusters. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Clusters
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_kmeansclustering <- function(INPUT = qgisprocess:::qgis_default_value(), CLUSTERS = qgisprocess:::qgis_default_value(), FIELD_NAME = qgisprocess:::qgis_default_value(), SIZE_FIELD_NAME = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:kmeansclustering")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:kmeansclustering", `INPUT` = INPUT, `CLUSTERS` = CLUSTERS, `FIELD_NAME` = FIELD_NAME, `SIZE_FIELD_NAME` = SIZE_FIELD_NAME, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:kmeansclustering", `INPUT` = INPUT, `CLUSTERS` = CLUSTERS, `FIELD_NAME` = FIELD_NAME, `SIZE_FIELD_NAME` = SIZE_FIELD_NAME, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}