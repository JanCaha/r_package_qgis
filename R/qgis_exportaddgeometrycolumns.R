##' QGIS Algorithm provided by QGIS (native c++) Add geometry attributes (native:exportaddgeometrycolumns). Computes geometric properties of the features in a vector layer. This algorithm computes geometric properties of the features in a vector layer. The algorithm generates a new vector layer with the same content as the input one, but with additional attributes in its attributes table, containing geometric measurements.  Depending on the geometry type of the vector layer, the attributes added to the table will be different.
##'
##' @title QGIS algorithm - Add geometry attributes
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param METHOD `enum`  of `("Cartesian Calculations in Layer's CRS", "Cartesian Calculations in Project's CRS", "Ellipsoidal Calculations")` - Calculate using. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `sink` - Added geometry info. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Added geometry info
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_exportaddgeometrycolumns <- function(INPUT = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:exportaddgeometrycolumns")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:exportaddgeometrycolumns", `INPUT` = INPUT, `METHOD` = METHOD, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:exportaddgeometrycolumns", `INPUT` = INPUT, `METHOD` = METHOD, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}