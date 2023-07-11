##' QGIS Algorithm provided by SAGA Next Gen Ls factor (sagang:lsfactor). ---------------- Arguments ----------------  SLOPE: Slope 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer AREA: Catchment Area 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LS: LS Factor 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer CONV: Area to Length Conversion 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) no conversion (areas already given as specific catchment area) 		- 1: (1) 1 / cell size (specific catchment area) 		- 2: (2) square root (catchment length) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' METHOD: Method (LS) 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Moore et al. 1991 		- 1: (1) Desmet & Govers 1996 		- 2: (2) Boehner & Selige 2006 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' EROSIVITY: Rill/Interrill Erosivity 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression STABILITY: Stability 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) stable 		- 1: (1) instable (thawing) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Ls factor
##'
##' @param SLOPE `raster` - Slope. Path to a raster layer.
##' @param AREA `raster` - Catchment Area. Path to a raster layer.
##' @param LS `rasterDestination` - LS Factor. Path for new raster layer.
##' @param CONV `enum`  of `("(0) no conversion (areas already given as specific catchment area)", "(1) 1 / cell size (specific catchment area)", "(2) square root (catchment length)")` - Area to Length Conversion. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param METHOD `enum`  of `("(0) Moore et al. 1991", "(1) Desmet & Govers 1996", "(2) Boehner & Selige 2006")` - Method (LS). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param EROSIVITY `number` - Rill\code{/}Interrill Erosivity. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param STABILITY `enum`  of `("(0) stable", "(1) instable (thawing)")` - Stability. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * LS - outputRaster - LS Factor
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_lsfactor <- function(SLOPE = qgisprocess:::qgis_default_value(), AREA = qgisprocess:::qgis_default_value(), LS = qgisprocess:::qgis_default_value(), CONV = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), EROSIVITY = qgisprocess:::qgis_default_value(), STABILITY = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:lsfactor")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:lsfactor", `SLOPE` = SLOPE, `AREA` = AREA, `LS` = LS, `CONV` = CONV, `METHOD` = METHOD, `EROSIVITY` = EROSIVITY, `STABILITY` = STABILITY,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:lsfactor", `SLOPE` = SLOPE, `AREA` = AREA, `LS` = LS, `CONV` = CONV, `METHOD` = METHOD, `EROSIVITY` = EROSIVITY, `STABILITY` = STABILITY,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "LS")
  }
}