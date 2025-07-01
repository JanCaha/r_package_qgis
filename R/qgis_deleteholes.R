##' QGIS Algorithm provided by QGIS (native c++) Delete holes (native:deleteholes). Creates a vector layer in which polygons with holes are replaced by polygons with only their external ring. This algorithm takes a polygon layer and removes holes in polygons. It creates a new vector layer in which polygons with holes have been replaced by polygons with only their external ring. Attributes are not modified.  An optional minimum area parameter allows removing only holes which are smaller than a specified area threshold. Leaving this parameter as 0.0 results in all holes being removed.
##'
##' @title QGIS algorithm - Delete holes
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param MIN_AREA `area` - Remove holes with area less than. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Cleaned. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Cleaned
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_deleteholes <- function(INPUT = qgisprocess:::qgis_default_value(), MIN_AREA = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:deleteholes")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:deleteholes", `INPUT` = INPUT, `MIN_AREA` = MIN_AREA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:deleteholes", `INPUT` = INPUT, `MIN_AREA` = MIN_AREA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}