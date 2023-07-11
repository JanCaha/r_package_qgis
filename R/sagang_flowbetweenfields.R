##' QGIS Algorithm provided by SAGA Next Gen Flow between fields (sagang:flowbetweenfields). ---------------- Arguments ----------------  ELEVATION: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FIELDS: FIELDS 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FLOW: Flow table 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer UPAREA: Uparea 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer STOP: Stop at edge 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Flow between fields
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param FIELDS `raster` - FIELDS. Path to a raster layer.
##' @param FLOW `vectorDestination` - Flow table. Path for new vector layer.
##' @param UPAREA `rasterDestination` - Uparea. Path for new raster layer.
##' @param STOP `boolean` - Stop at edge. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FLOW - outputVector - Flow table
##' * UPAREA - outputRaster - Uparea
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_flowbetweenfields <- function(ELEVATION = qgisprocess:::qgis_default_value(), FIELDS = qgisprocess:::qgis_default_value(), FLOW = qgisprocess:::qgis_default_value(), UPAREA = qgisprocess:::qgis_default_value(), STOP = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:flowbetweenfields")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:flowbetweenfields", `ELEVATION` = ELEVATION, `FIELDS` = FIELDS, `FLOW` = FLOW, `UPAREA` = UPAREA, `STOP` = STOP,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:flowbetweenfields", `ELEVATION` = ELEVATION, `FIELDS` = FIELDS, `FLOW` = FLOW, `UPAREA` = UPAREA, `STOP` = STOP,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FLOW")
  }
}