##' QGIS Algorithm provided by SAGA Gradient vector from cartesian to polar coordinates (saga:gradientvectorfromcartesiantopolarcoordinates)
##'
##' @title QGIS algorithm Gradient vector from cartesian to polar coordinates
##'
##' @param DX `raster` - X Component. Path to a raster layer.
##' @param DY `raster` - Y Component. Path to a raster layer.
##' @param UNITS `enum`  of `("[0] radians", "[1] degree")` - Polar Angle Units. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SYSTEM `enum`  of `("[0] mathematical", "[1] geographical", "[2] user defined")` - Polar Coordinate System. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SYSTEM_ZERO `number` - User defined Zero Direction. A numeric value.
##' @param SYSTEM_ORIENT `enum`  of `("[0] clockwise", "[1] counterclockwise")` - User defined Orientation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DIR `rasterDestination` - Direction. Path for new raster layer.
##' @param LEN `rasterDestination` - Length. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * DIR - outputRaster - Direction
##' * LEN - outputRaster - Length
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_gradientvectorfromcartesiantopolarcoordinates <- function(DX = qgisprocess::qgis_default_value(), DY = qgisprocess::qgis_default_value(), UNITS = qgisprocess::qgis_default_value(), SYSTEM = qgisprocess::qgis_default_value(), SYSTEM_ZERO = qgisprocess::qgis_default_value(), SYSTEM_ORIENT = qgisprocess::qgis_default_value(), DIR = qgisprocess::qgis_default_value(), LEN = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:gradientvectorfromcartesiantopolarcoordinates")
  output <- qgisprocess::qgis_run_algorithm("saga:gradientvectorfromcartesiantopolarcoordinates",`DX` = DX, `DY` = DY, `UNITS` = UNITS, `SYSTEM` = SYSTEM, `SYSTEM_ZERO` = SYSTEM_ZERO, `SYSTEM_ORIENT` = SYSTEM_ORIENT, `DIR` = DIR, `LEN` = LEN,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "DIR")
  }
}