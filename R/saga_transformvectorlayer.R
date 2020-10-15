##' QGIS Algorithm provided by SAGA Transform vector layer (saga:transformvectorlayer)
##'
##' @title QGIS algorithm Transform vector layer
##'
##' @param IN `source` - Shapes. Path to a vector layer.
##' @param DX `number` - dX. A numeric value.
##' @param DY `number` - dY. A numeric value.
##' @param ANGLE `number` - Angle. A numeric value.
##' @param SCALEX `number` - Scale Factor X. A numeric value.
##' @param SCALEY `number` - Scale Factor Y. A numeric value.
##' @param ANCHORX `number` - X. A numeric value.
##' @param ANCHORY `number` - Y. A numeric value.
##' @param OUT `vectorDestination` - Transformed. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUT - outputVector - Transformed
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_transformvectorlayer <- function(IN = qgisprocess::qgis_default_value(), DX = qgisprocess::qgis_default_value(), DY = qgisprocess::qgis_default_value(), ANGLE = qgisprocess::qgis_default_value(), SCALEX = qgisprocess::qgis_default_value(), SCALEY = qgisprocess::qgis_default_value(), ANCHORX = qgisprocess::qgis_default_value(), ANCHORY = qgisprocess::qgis_default_value(), OUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:transformvectorlayer",`IN` = IN, `DX` = DX, `DY` = DY, `ANGLE` = ANGLE, `SCALEX` = SCALEX, `SCALEY` = SCALEY, `ANCHORX` = ANCHORX, `ANCHORY` = ANCHORY, `OUT` = OUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUT")
}
}