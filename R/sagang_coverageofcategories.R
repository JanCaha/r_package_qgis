##' QGIS Algorithm provided by SAGA Next Gen Coverage of categories (sagang:coverageofcategories). ---------------- Arguments ----------------  CLASSES: Categories 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer COVERAGES: Coverages 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer LUT: Classification (optional) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer LUT_VAL: Value 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names LUT_MAX: Maximum Value 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names LUT_NAME: Class name 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names NO_DATA: Mark No Coverage as No-Data 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DATADEPTH: Data Depth 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) 1-byte 		- 1: (1) 2-byte 		- 2: (2) 4-byte 		- 3: (3) 8-byte 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX: Output extent (optional) 	Argument type:	extent 	Acceptable values: 		- A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105' 		- Path to a layer. The extent of the layer is used. TARGET_USER_SIZE: Cellsize 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Coverage of categories
##'
##' @param CLASSES `raster` - Categories. Path to a raster layer.
##' @param COVERAGES `rasterDestination` - Coverages. Path for new raster layer.
##' @param LUT `source` - Classification. Path to a vector layer.
##' @param LUT_VAL `field` - Value. The name of an existing field. ; delimited list of existing field names.
##' @param LUT_MAX `field` - Maximum Value. The name of an existing field. ; delimited list of existing field names.
##' @param LUT_NAME `field` - Class name. The name of an existing field. ; delimited list of existing field names.
##' @param NO_DATA `boolean` - Mark No Coverage as No-Data. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DATADEPTH `enum`  of `("(0) 1-byte", "(1) 2-byte", "(2) 4-byte", "(3) 8-byte")` - Data Depth. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used.. Original algorithm parameter name: TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX.
##' @param TARGET_USER_SIZE `number` - Cellsize. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * COVERAGES - outputRaster - Coverages
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_coverageofcategories <- function(CLASSES = qgisprocess:::qgis_default_value(), COVERAGES = qgisprocess:::qgis_default_value(), LUT = qgisprocess:::qgis_default_value(), LUT_VAL = qgisprocess:::qgis_default_value(), LUT_MAX = qgisprocess:::qgis_default_value(), LUT_NAME = qgisprocess:::qgis_default_value(), NO_DATA = qgisprocess:::qgis_default_value(), DATADEPTH = qgisprocess:::qgis_default_value(), TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX = qgisprocess:::qgis_default_value(), TARGET_USER_SIZE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:coverageofcategories")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:coverageofcategories", `CLASSES` = CLASSES, `COVERAGES` = COVERAGES, `LUT` = LUT, `LUT_VAL` = LUT_VAL, `LUT_MAX` = LUT_MAX, `LUT_NAME` = LUT_NAME, `NO_DATA` = NO_DATA, `DATADEPTH` = DATADEPTH, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:coverageofcategories", `CLASSES` = CLASSES, `COVERAGES` = COVERAGES, `LUT` = LUT, `LUT_VAL` = LUT_VAL, `LUT_MAX` = LUT_MAX, `LUT_NAME` = LUT_NAME, `NO_DATA` = NO_DATA, `DATADEPTH` = DATADEPTH, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "COVERAGES")
  }
}