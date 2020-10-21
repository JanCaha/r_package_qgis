##' QGIS Algorithm provided by QGIS (native c++) Rename layer (native:renamelayer)
##'
##' @title QGIS algorithm Rename layer
##'
##' @param INPUT `layer` - Layer. Path to a vector, raster or mesh layer.
##' @param NAME `string` - New name. String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputLayer - Layer
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_renamelayer <- function(INPUT = qgisprocess::qgis_default_value(), NAME = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:renamelayer",`INPUT` = INPUT, `NAME` = NAME,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}