##' QGIS Algorithm provided by SAGA Next Gen Clip points with polygons (sagang:clippointswithpolygons). ---------------- Arguments ----------------  POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD: Add Attribute to Clipped Points 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names CLIPS: Clipped Points 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer METHOD: Clipping Options 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) one layer for all points 		- 1: (1) separate layer for each polygon 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Clip points with polygons
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param FIELD `field` - Add Attribute to Clipped Points. The name of an existing field. ; delimited list of existing field names.
##' @param CLIPS `vectorDestination` - Clipped Points. Path for new vector layer.
##' @param METHOD `enum`  of `("(0) one layer for all points", "(1) separate layer for each polygon")` - Clipping Options. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CLIPS - outputVector - Clipped Points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_clippointswithpolygons <- function(POINTS = qgisprocess:::qgis_default_value(), POLYGONS = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), CLIPS = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:clippointswithpolygons")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:clippointswithpolygons", `POINTS` = POINTS, `POLYGONS` = POLYGONS, `FIELD` = FIELD, `CLIPS` = CLIPS, `METHOD` = METHOD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:clippointswithpolygons", `POINTS` = POINTS, `POLYGONS` = POLYGONS, `FIELD` = FIELD, `CLIPS` = CLIPS, `METHOD` = METHOD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CLIPS")
  }
}