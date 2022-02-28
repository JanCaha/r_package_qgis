##' QGIS Algorithm provided by QGIS (native c++) Remove null geometries (native:removenullgeometries)
##'
##' @title QGIS algorithm Remove null geometries
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param REMOVE_EMPTY `boolean` - Also remove empty geometries. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `sink` - Non null geometries. Path for new vector layer.
##' @param NULL_OUTPUT `sink` - Null geometries. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * NULL_OUTPUT - outputVector - Null geometries
##' * OUTPUT - outputVector - Non null geometries
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_removenullgeometries <- function(INPUT = qgisprocess::qgis_default_value(), REMOVE_EMPTY = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), NULL_OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:removenullgeometries")

  output <- qgisprocess::qgis_run_algorithm("native:removenullgeometries", `INPUT` = INPUT, `REMOVE_EMPTY` = REMOVE_EMPTY, `OUTPUT` = OUTPUT, `NULL_OUTPUT` = NULL_OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NULL_OUTPUT")
  }
}