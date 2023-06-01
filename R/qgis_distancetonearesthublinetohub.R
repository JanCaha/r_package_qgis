##' QGIS Algorithm provided by QGIS Distance to nearest hub (line to hub) (qgis:distancetonearesthublinetohub)
##'
##' @title QGIS algorithm Distance to nearest hub (line to hub)
##'
##' @param INPUT `source` - Source points layer. Path to a vector layer.
##' @param HUBS `source` - Destination hubs layer. Path to a vector layer.
##' @param FIELD `field` - Hub layer name attribute. The name of an existing field. ; delimited list of existing field names.
##' @param UNIT `enum`  of `("Meters", "Feet", "Miles", "Kilometers", "Layer units")` - Measurement unit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `sink` - Hub distance. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Hub distance
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_distancetonearesthublinetohub <- function(INPUT = qgisprocess:::qgis_default_value(), HUBS = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), UNIT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:distancetonearesthublinetohub")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:distancetonearesthublinetohub", `INPUT` = INPUT, `HUBS` = HUBS, `FIELD` = FIELD, `UNIT` = UNIT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:distancetonearesthublinetohub", `INPUT` = INPUT, `HUBS` = HUBS, `FIELD` = FIELD, `UNIT` = UNIT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}