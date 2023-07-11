##' QGIS Algorithm provided by SAGA Next Gen Burn stream network into dem (sagang:burnstreamnetworkintodem). ---------------- Arguments ----------------  DEM: DEM 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BURN: Processed DEM 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer STREAM: Streams 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FLOWDIR: Flow Direction 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer METHOD: Method 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) simply decrease cell's value by epsilon 		- 1: (1) lower cell's value to neighbours minimum value minus epsilon 		- 2: (2) trace stream network downstream 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' EPSILON: Epsilon 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Burn stream network into dem
##'
##' @param DEM `raster` - DEM. Path to a raster layer.
##' @param BURN `rasterDestination` - Processed DEM. Path for new raster layer.
##' @param STREAM `raster` - Streams. Path to a raster layer.
##' @param FLOWDIR `raster` - Flow Direction. Path to a raster layer.
##' @param METHOD `enum`  of `("(0) simply decrease cell's value by epsilon", "(1) lower cell's value to neighbours minimum value minus epsilon", "(2) trace stream network downstream")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param EPSILON `number` - Epsilon. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BURN - outputRaster - Processed DEM
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_burnstreamnetworkintodem <- function(DEM = qgisprocess:::qgis_default_value(), BURN = qgisprocess:::qgis_default_value(), STREAM = qgisprocess:::qgis_default_value(), FLOWDIR = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), EPSILON = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:burnstreamnetworkintodem")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:burnstreamnetworkintodem", `DEM` = DEM, `BURN` = BURN, `STREAM` = STREAM, `FLOWDIR` = FLOWDIR, `METHOD` = METHOD, `EPSILON` = EPSILON,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:burnstreamnetworkintodem", `DEM` = DEM, `BURN` = BURN, `STREAM` = STREAM, `FLOWDIR` = FLOWDIR, `METHOD` = METHOD, `EPSILON` = EPSILON,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BURN")
  }
}