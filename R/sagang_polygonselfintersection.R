##' QGIS Algorithm provided by SAGA Next Gen Polygon self-intersection (sagang:polygonselfintersection). ---------------- Arguments ----------------  POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer ID: Identifier 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names INTERSECT: Intersection 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Polygon self-intersection
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param ID `field` - Identifier. The name of an existing field. ; delimited list of existing field names.
##' @param INTERSECT `vectorDestination` - Intersection. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * INTERSECT - outputVector - Intersection
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_polygonselfintersection <- function(POLYGONS = qgisprocess:::qgis_default_value(), ID = qgisprocess:::qgis_default_value(), INTERSECT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:polygonselfintersection")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:polygonselfintersection", `POLYGONS` = POLYGONS, `ID` = ID, `INTERSECT` = INTERSECT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:polygonselfintersection", `POLYGONS` = POLYGONS, `ID` = ID, `INTERSECT` = INTERSECT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "INTERSECT")
  }
}