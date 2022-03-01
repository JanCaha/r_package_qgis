##' QGIS Algorithm provided by SAGA Add point attributes to polygons (saga:addpointattributestopolygons)
##'
##' @title QGIS algorithm Add point attributes to polygons
##'
##' @param INPUT `source` - Polygons. Path to a vector layer.
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param FIELDS `field` - Attributes. The name of an existing field. ; delimited list of existing field names.
##' @param ADD_LOCATION_INFO `boolean` - Add location info. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `vectorDestination` - Result. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Result
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_addpointattributestopolygons <- function(INPUT = qgisprocess::qgis_default_value(), POINTS = qgisprocess::qgis_default_value(), FIELDS = qgisprocess::qgis_default_value(), ADD_LOCATION_INFO = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:addpointattributestopolygons")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:addpointattributestopolygons", `INPUT` = INPUT, `POINTS` = POINTS, `FIELDS` = FIELDS, `ADD_LOCATION_INFO` = ADD_LOCATION_INFO, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:addpointattributestopolygons", `INPUT` = INPUT, `POINTS` = POINTS, `FIELDS` = FIELDS, `ADD_LOCATION_INFO` = ADD_LOCATION_INFO, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}