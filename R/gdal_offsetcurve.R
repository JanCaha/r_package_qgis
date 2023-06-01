##' QGIS Algorithm provided by GDAL Offset curve (gdal:offsetcurve)
##'
##' @title QGIS algorithm Offset curve
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param GEOMETRY `string` - Geometry column name. String value.
##' @param DISTANCE `distance` - Offset distance (left-sided: positive, right-sided: negative). A numeric value.
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param OUTPUT `vectorDestination` - Offset curve. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Offset curve
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_offsetcurve <- function(INPUT = qgisprocess:::qgis_default_value(), GEOMETRY = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), OPTIONS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:offsetcurve")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:offsetcurve", `INPUT` = INPUT, `GEOMETRY` = GEOMETRY, `DISTANCE` = DISTANCE, `OPTIONS` = OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:offsetcurve", `INPUT` = INPUT, `GEOMETRY` = GEOMETRY, `DISTANCE` = DISTANCE, `OPTIONS` = OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}