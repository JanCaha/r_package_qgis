##' QGIS Algorithm provided by SAGA Next Gen Sink removal (sagang:sinkremoval). ---------------- Arguments ----------------  DEM: DEM 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SINKROUTE: Sink Route (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer DEM_PREPROC: Preprocessed DEM 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer METHOD: Method 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Deepen Drainage Routes 		- 1: (1) Fill Sinks 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' THRESHOLD: Threshold 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression THRSHEIGHT: Threshold Height 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Sink removal
##'
##' @param DEM `raster` - DEM. Path to a raster layer.
##' @param SINKROUTE `raster` - Sink Route. Path to a raster layer.
##' @param DEM_PREPROC `rasterDestination` - Preprocessed DEM. Path for new raster layer.
##' @param METHOD `enum`  of `("(0) Deepen Drainage Routes", "(1) Fill Sinks")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param THRESHOLD `boolean` - Threshold. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param THRSHEIGHT `number` - Threshold Height. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DEM_PREPROC - outputRaster - Preprocessed DEM
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_sinkremoval <- function(DEM = qgisprocess:::qgis_default_value(), SINKROUTE = qgisprocess:::qgis_default_value(), DEM_PREPROC = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), THRESHOLD = qgisprocess:::qgis_default_value(), THRSHEIGHT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:sinkremoval")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:sinkremoval", `DEM` = DEM, `SINKROUTE` = SINKROUTE, `DEM_PREPROC` = DEM_PREPROC, `METHOD` = METHOD, `THRESHOLD` = THRESHOLD, `THRSHEIGHT` = THRSHEIGHT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:sinkremoval", `DEM` = DEM, `SINKROUTE` = SINKROUTE, `DEM_PREPROC` = DEM_PREPROC, `METHOD` = METHOD, `THRESHOLD` = THRESHOLD, `THRSHEIGHT` = THRSHEIGHT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DEM_PREPROC")
  }
}