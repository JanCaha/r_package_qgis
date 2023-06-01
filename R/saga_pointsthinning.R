##' QGIS Algorithm provided by SAGA Points thinning (saga:pointsthinning)
##'
##' @title QGIS algorithm Points thinning
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param RESOLUTION `number` - Resolution. A numeric value.
##' @param THINNED `vectorDestination` - Thinned Points. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * THINNED - outputVector - Thinned Points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_pointsthinning <- function(POINTS = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), RESOLUTION = qgisprocess:::qgis_default_value(), THINNED = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:pointsthinning")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:pointsthinning", `POINTS` = POINTS, `FIELD` = FIELD, `RESOLUTION` = RESOLUTION, `THINNED` = THINNED,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:pointsthinning", `POINTS` = POINTS, `FIELD` = FIELD, `RESOLUTION` = RESOLUTION, `THINNED` = THINNED,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "THINNED")
  }
}