##' QGIS Algorithm provided by QGIS (native c++) DBSCAN clustering (native:dbscanclustering). Clusters point features using a density based scan algorithm. This algorithm clusters point features based on a 2D implementation of Density-based spatial clustering of applications with noise (DBSCAN) algorithm.  The algorithm requires two parameters, a minimum cluster size (“minPts”), and the maximum distance allowed between clustered points (“eps”).
##'
##' @title QGIS algorithm - DBSCAN clustering
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param MIN_SIZE `number` - Minimum cluster size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EPS `distance` - Maximum distance between clustered points. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DBSCAN `boolean` - Treat border points as noise (DBSCAN*). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: DBSCAN*.
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
##' * NUM_CLUSTERS - outputNumber - Number of clusters
##' * OUTPUT - outputVector - Clusters
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_dbscanclustering <- function(INPUT = qgisprocess:::qgis_default_value(), MIN_SIZE = qgisprocess:::qgis_default_value(), EPS = qgisprocess:::qgis_default_value(), DBSCAN = qgisprocess:::qgis_default_value(), FIELD_NAME = qgisprocess:::qgis_default_value(), SIZE_FIELD_NAME = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:dbscanclustering")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:dbscanclustering", `INPUT` = INPUT, `MIN_SIZE` = MIN_SIZE, `EPS` = EPS, `DBSCAN*` = DBSCAN, `FIELD_NAME` = FIELD_NAME, `SIZE_FIELD_NAME` = SIZE_FIELD_NAME, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:dbscanclustering", `INPUT` = INPUT, `MIN_SIZE` = MIN_SIZE, `EPS` = EPS, `DBSCAN*` = DBSCAN, `FIELD_NAME` = FIELD_NAME, `SIZE_FIELD_NAME` = SIZE_FIELD_NAME, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NUM_CLUSTERS")
  }
}