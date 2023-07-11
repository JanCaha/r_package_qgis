##' QGIS Algorithm provided by SAGA Next Gen Gdal formats (sagang:gdalformats). ---------------- Arguments ----------------  FORMATS: GDAL Formats 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer TYPE: Type 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: (0) raster 		- 1: (1) vector 		- 2: (2) all 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' ACCESS: Access 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: (0) read 		- 1: (1) write 		- 2: (2) read or write 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' RECOGNIZED: All Recognized Files 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Gdal formats
##'
##' @param FORMATS `vectorDestination` - GDAL Formats. Path for new vector layer.
##' @param TYPE `enum`  of `("(0) raster", "(1) vector", "(2) all")` - Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ACCESS `enum`  of `("(0) read", "(1) write", "(2) read or write")` - Access. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RECOGNIZED `boolean` - All Recognized Files. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FORMATS - outputVector - GDAL Formats
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_gdalformats <- function(FORMATS = qgisprocess:::qgis_default_value(), TYPE = qgisprocess:::qgis_default_value(), ACCESS = qgisprocess:::qgis_default_value(), RECOGNIZED = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:gdalformats")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:gdalformats", `FORMATS` = FORMATS, `TYPE` = TYPE, `ACCESS` = ACCESS, `RECOGNIZED` = RECOGNIZED,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:gdalformats", `FORMATS` = FORMATS, `TYPE` = TYPE, `ACCESS` = ACCESS, `RECOGNIZED` = RECOGNIZED,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FORMATS")
  }
}