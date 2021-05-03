##' QGIS Algorithm provided by QGIS (native c++) Mean coordinate(s) (native:meancoordinates)
##'
##' @title QGIS algorithm Mean coordinate(s)
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param WEIGHT `field` - Weight field. The name of an existing field. ; delimited list of existing field names.
##' @param UID `field` - Unique ID field. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `sink` - Mean coordinates. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Mean coordinates
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_meancoordinates <- function(INPUT = qgisprocess::qgis_default_value(), WEIGHT = qgisprocess::qgis_default_value(), UID = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:meancoordinates")

  output <- qgisprocess::qgis_run_algorithm("native:meancoordinates", `INPUT` = INPUT, `WEIGHT` = WEIGHT, `UID` = UID, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}