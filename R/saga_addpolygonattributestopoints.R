##' QGIS Algorithm provided by SAGA Add polygon attributes to points (saga:addpolygonattributestopoints)
##'
##' @title QGIS algorithm Add polygon attributes to points
##'
##' @param INPUT `source` - Points. Path to a vector layer.
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param FIELDS `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
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
##' @importFrom qgisprocess qgis_run_algorithm

saga_addpolygonattributestopoints <- function(INPUT = qgisprocess:::qgis_default_value(), POLYGONS = qgisprocess:::qgis_default_value(), FIELDS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:addpolygonattributestopoints")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:addpolygonattributestopoints", `INPUT` = INPUT, `POLYGONS` = POLYGONS, `FIELDS` = FIELDS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:addpolygonattributestopoints", `INPUT` = INPUT, `POLYGONS` = POLYGONS, `FIELDS` = FIELDS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}