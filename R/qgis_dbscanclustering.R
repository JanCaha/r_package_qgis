##' QGIS Algorithm provided by QGIS (native c++) DBSCAN clustering (native:dbscanclustering)
##'
##' @title QGIS algorithm DBSCAN clustering
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param MIN_SIZE `number` - Minimum cluster size. A numeric value.
##' @param EPS `distance` - Maximum distance between clustered points. A numeric value.
##' @param DBSCAN `boolean` - Treat border points as noise (DBSCAN*). 1 for true/yes. 0 for false/no. Original algorithm parameter name: DBSCAN*.
##' @param FIELD_NAME `string` - Cluster field name. String value.
##' @param SIZE_FIELD_NAME `string` - Cluster size field name. String value.
##' @param OUTPUT `sink` - Clusters. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Clusters
##' * NUM_CLUSTERS - outputNumber - Number of clusters
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_dbscanclustering <- function(INPUT = qgisprocess::qgis_default_value(), MIN_SIZE = qgisprocess::qgis_default_value(), EPS = qgisprocess::qgis_default_value(), DBSCAN = qgisprocess::qgis_default_value(), FIELD_NAME = qgisprocess::qgis_default_value(), SIZE_FIELD_NAME = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:dbscanclustering")
  output <- qgisprocess::qgis_run_algorithm("native:dbscanclustering",`INPUT` = INPUT, `MIN_SIZE` = MIN_SIZE, `EPS` = EPS, `DBSCAN*` = DBSCAN, `FIELD_NAME` = FIELD_NAME, `SIZE_FIELD_NAME` = SIZE_FIELD_NAME, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}