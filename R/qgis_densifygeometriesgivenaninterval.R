##' QGIS Algorithm provided by QGIS (native c++) Densify by interval (native:densifygeometriesgivenaninterval). Creates a densified version of geometries. Geometries are densified by adding additional vertices on edges that have a maximum distance of the interval parameter in map units.
##'
##' @title QGIS algorithm - Densify by interval
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param INTERVAL `distance` - Interval between vertices to add. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Densified. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Densified
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_densifygeometriesgivenaninterval <- function(INPUT = qgisprocess:::qgis_default_value(), INTERVAL = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:densifygeometriesgivenaninterval")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:densifygeometriesgivenaninterval", `INPUT` = INPUT, `INTERVAL` = INTERVAL, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:densifygeometriesgivenaninterval", `INPUT` = INPUT, `INTERVAL` = INTERVAL, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}