##' QGIS Algorithm provided by QGIS (native c++) Create wedge buffers (native:wedgebuffers)
##'
##' @title QGIS algorithm Create wedge buffers
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param AZIMUTH `number` - Azimuth (degrees from North). A numeric value.
##' @param WIDTH `number` - Wedge width (in degrees). A numeric value.
##' @param OUTER_RADIUS `number` - Outer radius. A numeric value.
##' @param INNER_RADIUS `number` - Inner radius. A numeric value.
##' @param OUTPUT `sink` - Buffers. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Buffers
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_wedgebuffers <- function(INPUT = qgisprocess::qgis_default_value(), AZIMUTH = qgisprocess::qgis_default_value(), WIDTH = qgisprocess::qgis_default_value(), OUTER_RADIUS = qgisprocess::qgis_default_value(), INNER_RADIUS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:wedgebuffers",`INPUT` = INPUT, `AZIMUTH` = AZIMUTH, `WIDTH` = WIDTH, `OUTER_RADIUS` = OUTER_RADIUS, `INNER_RADIUS` = INNER_RADIUS, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}