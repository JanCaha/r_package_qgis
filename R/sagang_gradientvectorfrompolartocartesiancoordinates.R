##' QGIS Algorithm provided by SAGA Next Gen Gradient vector from polar to cartesian coordinates (sagang:gradientvectorfrompolartocartesiancoordinates). ---------------- Arguments ----------------  DIR: Direction 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LEN: Length 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer DX: X Component 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DY: Y Component 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer UNITS: Polar Angle Units 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) radians 		- 1: (1) degree 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SYSTEM: Polar Coordinate System 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) mathematical 		- 1: (1) geographical 		- 2: (2) user defined 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SYSTEM_ZERO: User defined Zero Direction 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SYSTEM_ORIENT: User defined Orientation 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) clockwise 		- 1: (1) counterclockwise 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Gradient vector from polar to cartesian coordinates
##'
##' @param DIR `raster` - Direction. Path to a raster layer.
##' @param LEN `raster` - Length. Path to a raster layer.
##' @param DX `rasterDestination` - X Component. Path for new raster layer.
##' @param DY `rasterDestination` - Y Component. Path for new raster layer.
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
##' * DX - outputRaster - X Component
##' * DY - outputRaster - Y Component
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_gradientvectorfrompolartocartesiancoordinates <- function(DIR = qgisprocess:::qgis_default_value(), LEN = qgisprocess:::qgis_default_value(), DX = qgisprocess:::qgis_default_value(), DY = qgisprocess:::qgis_default_value(), UNITS = qgisprocess:::qgis_default_value(), SYSTEM = qgisprocess:::qgis_default_value(), SYSTEM_ZERO = qgisprocess:::qgis_default_value(), SYSTEM_ORIENT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:gradientvectorfrompolartocartesiancoordinates")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:gradientvectorfrompolartocartesiancoordinates", `DIR` = DIR, `LEN` = LEN, `DX` = DX, `DY` = DY, `UNITS` = UNITS, `SYSTEM` = SYSTEM, `SYSTEM_ZERO` = SYSTEM_ZERO, `SYSTEM_ORIENT` = SYSTEM_ORIENT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:gradientvectorfrompolartocartesiancoordinates", `DIR` = DIR, `LEN` = LEN, `DX` = DX, `DY` = DY, `UNITS` = UNITS, `SYSTEM` = SYSTEM, `SYSTEM_ZERO` = SYSTEM_ZERO, `SYSTEM_ORIENT` = SYSTEM_ORIENT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DX")
  }
}