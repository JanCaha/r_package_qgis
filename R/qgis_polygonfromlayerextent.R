##' QGIS Algorithm provided by QGIS (native c++) Extract layer extent (native:polygonfromlayerextent). Generates a vector layer with the minimum bounding box that covers the input layer. This algorithm takes a map layer and generates a new vector layer with the minimum bounding box (rectangle polygon with N-S orientation) that covers the input layer. Optionally, the extent can be enlarged to a rounded value.
##'
##' @title QGIS algorithm - Extract layer extent
##'
##' @param INPUT `layer` - Input layer. Path to a vector, raster or mesh layer.
##' @param ROUND_TO `distance` - Round values to. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Extent. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Extent
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_polygonfromlayerextent <- function(INPUT = qgisprocess:::qgis_default_value(), ROUND_TO = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:polygonfromlayerextent")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:polygonfromlayerextent", `INPUT` = INPUT, `ROUND_TO` = ROUND_TO, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:polygonfromlayerextent", `INPUT` = INPUT, `ROUND_TO` = ROUND_TO, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}