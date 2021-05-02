##' QGIS Algorithm provided by SAGA Merge vector layers (saga:mergevectorlayers)
##'
##' @title QGIS algorithm Merge vector layers
##'
##' @param INPUT `multilayer` - Input Layers. .
##' @param SRCINFO `boolean` - Add source information. 1 for true/yes. 0 for false/no.
##' @param MATCH `boolean` - Match Fields by Name. 1 for true/yes. 0 for false/no.
##' @param MERGED `vectorDestination` - Merged Layer. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * MERGED - outputVector - Merged Layer
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_mergevectorlayers <- function(INPUT = qgisprocess::qgis_default_value(), SRCINFO = qgisprocess::qgis_default_value(), MATCH = qgisprocess::qgis_default_value(), MERGED = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:mergevectorlayers")
  output <- qgisprocess::qgis_run_algorithm("saga:mergevectorlayers",`INPUT` = INPUT, `SRCINFO` = SRCINFO, `MATCH` = MATCH, `MERGED` = MERGED,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "MERGED")
  }
}