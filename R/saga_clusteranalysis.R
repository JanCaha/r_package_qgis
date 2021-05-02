##' QGIS Algorithm provided by SAGA Cluster analysis (saga:clusteranalysis)
##'
##' @title QGIS algorithm Cluster analysis
##'
##' @param INPUT `source` - Table. Path to a vector layer.
##' @param RESULT `vectorDestination` - Result. Path for new vector layer.
##' @param STATISTICS `vectorDestination` - Statistics. Path for new vector layer.
##' @param FIELDS `field` - Attributes. The name of an existing field. ; delimited list of existing field names.
##' @param CLUSTER `field` - Cluster. The name of an existing field. ; delimited list of existing field names.
##' @param METHOD `enum`  of `("[0] Iterative Minimum Distance (Forgy 1965)", "[1] Hill-Climbing (Rubin 1967)", "[2] Combined Minimum Distance / Hillclimbing")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NCLUSTER `number` - Clusters. A numeric value.
##' @param NORMALISE `boolean` - Normalise. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Result
##' * STATISTICS - outputVector - Statistics
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_clusteranalysis <- function(INPUT = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(), STATISTICS = qgisprocess::qgis_default_value(), FIELDS = qgisprocess::qgis_default_value(), CLUSTER = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), NCLUSTER = qgisprocess::qgis_default_value(), NORMALISE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:clusteranalysis")
  output <- qgisprocess::qgis_run_algorithm("saga:clusteranalysis",`INPUT` = INPUT, `RESULT` = RESULT, `STATISTICS` = STATISTICS, `FIELDS` = FIELDS, `CLUSTER` = CLUSTER, `METHOD` = METHOD, `NCLUSTER` = NCLUSTER, `NORMALISE` = NORMALISE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}