##' QGIS Algorithm provided by QGIS Eliminate selected polygons (qgis:eliminateselectedpolygons)
##'
##' @title QGIS algorithm Eliminate selected polygons
##'
##' @param INPUT `vector` - Input layer. Path to a vector layer.
##' @param MODE `enum`  of `("Largest Area", "Smallest Area", "Largest Common Boundary")` - Merge selection with the neighbouring polygon with the. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `sink` - Eliminated. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Eliminated
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_eliminateselectedpolygons <- function(INPUT = qgisprocess::qgis_default_value(), MODE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("qgis:eliminateselectedpolygons",`INPUT` = INPUT, `MODE` = MODE, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}