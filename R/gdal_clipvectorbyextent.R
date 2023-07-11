##' QGIS Algorithm provided by GDAL Clip vector by extent (gdal:clipvectorbyextent). ---------------- Arguments ----------------  INPUT: Input layer 	Argument type:	source 	Acceptable values: 		- Path to a vector layer EXTENT: Clipping extent 	Argument type:	extent 	Acceptable values: 		- A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105' 		- Path to a layer. The extent of the layer is used. OPTIONS: Additional creation options (optional) 	Default value:	 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OUTPUT: Clipped (extent) 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Clip vector by extent
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param EXTENT `extent` - Clipping extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param OPTIONS `string` - Additional creation options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `vectorDestination` - Clipped (extent). Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Clipped (extent)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_clipvectorbyextent <- function(INPUT = qgisprocess:::qgis_default_value(), EXTENT = qgisprocess:::qgis_default_value(), OPTIONS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:clipvectorbyextent")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:clipvectorbyextent", `INPUT` = INPUT, `EXTENT` = EXTENT, `OPTIONS` = OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:clipvectorbyextent", `INPUT` = INPUT, `EXTENT` = EXTENT, `OPTIONS` = OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}