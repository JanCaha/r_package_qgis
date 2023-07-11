##' QGIS Algorithm provided by SAGA Next Gen Ls factor (one step) (sagang:lsfactoronestep). ---------------- Arguments ----------------  DEM: DEM 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LS_FACTOR: LS Factor 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer LS_METHOD: Method 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Moore et al. 1991 		- 1: (1) Desmond & Govers 1996 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' PREPROCESSING: Preprocessing 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: (0) none 		- 1: (1) Fill Sinks (Wang & Liu) 		- 2: (2) Sink Removal 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' MINSLOPE: Minimum Slope 	Default value:	0.0001 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Ls factor (one step)
##'
##' @param DEM `raster` - DEM. Path to a raster layer.
##' @param LS_FACTOR `rasterDestination` - LS Factor. Path for new raster layer.
##' @param LS_METHOD `enum`  of `("(0) Moore et al. 1991", "(1) Desmond & Govers 1996")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param PREPROCESSING `enum`  of `("(0) none", "(1) Fill Sinks (Wang & Liu)", "(2) Sink Removal")` - Preprocessing. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MINSLOPE `number` - Minimum Slope. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * LS_FACTOR - outputRaster - LS Factor
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_lsfactoronestep <- function(DEM = qgisprocess:::qgis_default_value(), LS_FACTOR = qgisprocess:::qgis_default_value(), LS_METHOD = qgisprocess:::qgis_default_value(), PREPROCESSING = qgisprocess:::qgis_default_value(), MINSLOPE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:lsfactoronestep")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:lsfactoronestep", `DEM` = DEM, `LS_FACTOR` = LS_FACTOR, `LS_METHOD` = LS_METHOD, `PREPROCESSING` = PREPROCESSING, `MINSLOPE` = MINSLOPE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:lsfactoronestep", `DEM` = DEM, `LS_FACTOR` = LS_FACTOR, `LS_METHOD` = LS_METHOD, `PREPROCESSING` = PREPROCESSING, `MINSLOPE` = MINSLOPE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "LS_FACTOR")
  }
}