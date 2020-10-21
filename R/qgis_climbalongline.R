##' QGIS Algorithm provided by QGIS Climb Along Line (qgis:climbalongline)
##'
##' @title QGIS algorithm Climb Along Line
##'
##' @param INPUT `source` - Line layer. Path to a vector layer.
##' @param OUTPUT `sink` - Climb layer. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Climb layer
##' * TOTALCLIMB - outputNumber - Total climb
##' * TOTALDESCENT - outputNumber - Total descent
##' * MINELEVATION - outputNumber - Minimum elevation
##' * MAXELEVATION - outputNumber - Maximum elevation
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_climbalongline <- function(INPUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("qgis:climbalongline",`INPUT` = INPUT, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}