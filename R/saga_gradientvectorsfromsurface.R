##' QGIS Algorithm provided by SAGA Gradient vectors from surface (saga:gradientvectorsfromsurface)
##'
##' @title QGIS algorithm Gradient vectors from surface
##'
##' @param SURFACE `raster` - Surface. Path to a raster layer.
##' @param STEP `number` - Step. A numeric value.
##' @param SIZE_MIN `number` - Size Range Min. A numeric value.
##' @param SIZE_MAX `number` - Size Range Max. A numeric value.
##' @param AGGR `enum`  of `("[0] nearest neighbour", "[1] mean value")` - Aggregation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param STYLE `enum`  of `("[0] simple line", "[1] arrow", "[2] arrow (centered to cell)")` - Style. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param VECTORS `vectorDestination` - Gradient Vectors. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * VECTORS - outputVector - Gradient Vectors
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_gradientvectorsfromsurface <- function(SURFACE = qgisprocess::qgis_default_value(), STEP = qgisprocess::qgis_default_value(), SIZE_MIN = qgisprocess::qgis_default_value(), SIZE_MAX = qgisprocess::qgis_default_value(), AGGR = qgisprocess::qgis_default_value(), STYLE = qgisprocess::qgis_default_value(), VECTORS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:gradientvectorsfromsurface",`SURFACE` = SURFACE, `STEP` = STEP, `SIZE_MIN` = SIZE_MIN, `SIZE_MAX` = SIZE_MAX, `AGGR` = AGGR, `STYLE` = STYLE, `VECTORS` = VECTORS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "VECTORS")
  }
}