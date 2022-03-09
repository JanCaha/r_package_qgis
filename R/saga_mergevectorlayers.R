##' QGIS Algorithm provided by SAGA Merge vector layers (saga:mergevectorlayers)
##'
##' @title QGIS algorithm Merge vector layers
##'
##' @param INPUT `multilayer` - Input Layers. .
##' @param SRCINFO `boolean` - Add source information. 1 for true/yes. 0 for false/no.
##' @param MATCH `boolean` - Match Fields by Name. 1 for true/yes. 0 for false/no.
##' @param MERGED `vectorDestination` - Merged Layer. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * MERGED - outputVector - Merged Layer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_mergevectorlayers <- function(INPUT = qgisprocess::qgis_default_value(), SRCINFO = qgisprocess::qgis_default_value(), MATCH = qgisprocess::qgis_default_value(), MERGED = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:mergevectorlayers")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:mergevectorlayers", `INPUT` = INPUT, `SRCINFO` = SRCINFO, `MATCH` = MATCH, `MERGED` = MERGED,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:mergevectorlayers", `INPUT` = INPUT, `SRCINFO` = SRCINFO, `MATCH` = MATCH, `MERGED` = MERGED,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "MERGED")
  }
}