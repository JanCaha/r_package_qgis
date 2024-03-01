##' QGIS Algorithm provided by SAGA Next Gen Gpx to shapefile (sagang:gpxtoshapefile). ---------------- Arguments ----------------  BASEPATH: Gpx2shp path 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file FILE: GPX file 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file TRACKPOINTS: Convert track points 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression WAYPOINTS: Convert way points 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ROUTES: Convert routes 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ADD: Load shapefile 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Gpx to shapefile
##'
##' @param BASEPATH `file` - Gpx2shp path. Path to a file.
##' @param FILE `file` - GPX file. Path to a file.
##' @param TRACKPOINTS `boolean` - Convert track points. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param WAYPOINTS `boolean` - Convert way points. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ROUTES `boolean` - Convert routes. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ADD `boolean` - Load shapefile. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' No output description provided.
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_gpxtoshapefile <- function(BASEPATH = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(), TRACKPOINTS = qgisprocess:::qgis_default_value(), WAYPOINTS = qgisprocess:::qgis_default_value(), ROUTES = qgisprocess:::qgis_default_value(), ADD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:gpxtoshapefile")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:gpxtoshapefile", `BASEPATH` = BASEPATH, `FILE` = FILE, `TRACKPOINTS` = TRACKPOINTS, `WAYPOINTS` = WAYPOINTS, `ROUTES` = ROUTES, `ADD` = ADD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:gpxtoshapefile", `BASEPATH` = BASEPATH, `FILE` = FILE, `TRACKPOINTS` = TRACKPOINTS, `WAYPOINTS` = WAYPOINTS, `ROUTES` = ROUTES, `ADD` = ADD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}