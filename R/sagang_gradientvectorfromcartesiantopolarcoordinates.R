##' QGIS Algorithm provided by SAGA Next Gen Gradient vector from cartesian to polar coordinates (sagang:gradientvectorfromcartesiantopolarcoordinates). ---------------- Arguments ----------------  DX: X Component 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer DY: Y Component 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer DIR: Direction 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer LEN: Length 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer UNITS: Polar Angle Units 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) radians 		- 1: (1) degree 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SYSTEM: Polar Coordinate System 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) mathematical 		- 1: (1) geographical 		- 2: (2) user defined 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SYSTEM_ZERO: User defined Zero Direction 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SYSTEM_ORIENT: User defined Orientation 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) clockwise 		- 1: (1) counterclockwise 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Gradient vector from cartesian to polar coordinates
##'
##' @param DX `raster` - X Component. Path to a raster layer.
##' @param DY `raster` - Y Component. Path to a raster layer.
##' @param DIR `rasterDestination` - Direction. Path for new raster layer.
##' @param LEN `rasterDestination` - Length. Path for new raster layer.
##' @param UNITS `enum`  of `("(0) radians", "(1) degree")` - Polar Angle Units. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SYSTEM `enum`  of `("(0) mathematical", "(1) geographical", "(2) user defined")` - Polar Coordinate System. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SYSTEM_ZERO `number` - User defined Zero Direction. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SYSTEM_ORIENT `enum`  of `("(0) clockwise", "(1) counterclockwise")` - User defined Orientation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DIR - outputRaster - Direction
##' * LEN - outputRaster - Length
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_gradientvectorfromcartesiantopolarcoordinates <- function(DX = qgisprocess:::qgis_default_value(), DY = qgisprocess:::qgis_default_value(), DIR = qgisprocess:::qgis_default_value(), LEN = qgisprocess:::qgis_default_value(), UNITS = qgisprocess:::qgis_default_value(), SYSTEM = qgisprocess:::qgis_default_value(), SYSTEM_ZERO = qgisprocess:::qgis_default_value(), SYSTEM_ORIENT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:gradientvectorfromcartesiantopolarcoordinates")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:gradientvectorfromcartesiantopolarcoordinates", `DX` = DX, `DY` = DY, `DIR` = DIR, `LEN` = LEN, `UNITS` = UNITS, `SYSTEM` = SYSTEM, `SYSTEM_ZERO` = SYSTEM_ZERO, `SYSTEM_ORIENT` = SYSTEM_ORIENT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:gradientvectorfromcartesiantopolarcoordinates", `DX` = DX, `DY` = DY, `DIR` = DIR, `LEN` = LEN, `UNITS` = UNITS, `SYSTEM` = SYSTEM, `SYSTEM_ZERO` = SYSTEM_ZERO, `SYSTEM_ORIENT` = SYSTEM_ORIENT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DIR")
  }
}