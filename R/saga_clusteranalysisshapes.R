##' QGIS Algorithm provided by SAGA Cluster analysis (shapes) (saga:clusteranalysisshapes)
##'
##' @title QGIS algorithm Cluster analysis (shapes)
##'
##' @param INPUT `source` - Shapes. Path to a vector layer.
##' @param RESULT `vectorDestination` - Result. Path for new vector layer.
##' @param FIELDS `field` - Attributes. The name of an existing field. ; delimited list of existing field names.
##' @param CLUSTER `field` - Cluster. The name of an existing field. ; delimited list of existing field names.
##' @param STATISTICS `vectorDestination` - Result. Path for new vector layer.
##' @param METHOD `enum`  of `("[0] Iterative Minimum Distance (Forgy 1965)", "[1] Hill-Climbing (Rubin 1967)", "[2] Combined Minimum Distance / Hillclimbing")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NCLUSTER `number` - Clusters. A numeric value.
##' @param NORMALISE `boolean` - Normalise. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Result
##' * STATISTICS - outputVector - Result
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_clusteranalysisshapes <- function(INPUT = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(), FIELDS = qgisprocess::qgis_default_value(), CLUSTER = qgisprocess::qgis_default_value(), STATISTICS = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), NCLUSTER = qgisprocess::qgis_default_value(), NORMALISE = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:clusteranalysisshapes")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:clusteranalysisshapes", `INPUT` = INPUT, `RESULT` = RESULT, `FIELDS` = FIELDS, `CLUSTER` = CLUSTER, `STATISTICS` = STATISTICS, `METHOD` = METHOD, `NCLUSTER` = NCLUSTER, `NORMALISE` = NORMALISE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:clusteranalysisshapes", `INPUT` = INPUT, `RESULT` = RESULT, `FIELDS` = FIELDS, `CLUSTER` = CLUSTER, `STATISTICS` = STATISTICS, `METHOD` = METHOD, `NCLUSTER` = NCLUSTER, `NORMALISE` = NORMALISE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}