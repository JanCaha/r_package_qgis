##' QGIS Algorithm provided by QGIS (native c++) Join by lines (hub lines) (native:hublines). Creates lines joining two point layers, based on a common attribute value. This algorithm creates hub and spoke diagrams by connecting lines from points on the Spoke layer to matching points in the Hub layer.  Determination of which hub goes with each point is based on a match between the Hub ID field on the hub points and the Spoke ID field on the spoke points.  If input layers are not point layers, a point on the surface of the geometries will be taken as the connecting location.  Optionally, geodesic lines can be created, which represent the shortest path on the surface of an ellipsoid. When geodesic mode is used, it is possible to split the created lines at the antimeridian (±180 degrees longitude), which can improve rendering of the lines. Additionally, the distance between vertices can be specified. A smaller distance results in a denser, more accurate line.
##'
##' @title QGIS algorithm - Join by lines (hub lines)
##'
##' @param HUBS `source` - Hub layer. Path to a vector layer.
##' @param HUB_FIELD `field` - Hub ID field. The name of an existing field. ; delimited list of existing field names.
##' @param HUB_FIELDS `field` - Hub layer fields to copy (leave empty to copy all fields). The name of an existing field. ; delimited list of existing field names.
##' @param SPOKES `source` - Spoke layer. Path to a vector layer.
##' @param SPOKE_FIELD `field` - Spoke ID field. The name of an existing field. ; delimited list of existing field names.
##' @param SPOKE_FIELDS `field` - Spoke layer fields to copy (leave empty to copy all fields). The name of an existing field. ; delimited list of existing field names.
##' @param GEODESIC `boolean` - Create geodesic lines. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GEODESIC_DISTANCE `distance` - Distance between vertices (geodesic lines only). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ANTIMERIDIAN_SPLIT `boolean` - Split lines at antimeridian (±180 degrees longitude). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Hub lines. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Hub lines
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_hublines <- function(HUBS = qgisprocess:::qgis_default_value(), HUB_FIELD = qgisprocess:::qgis_default_value(), HUB_FIELDS = qgisprocess:::qgis_default_value(), SPOKES = qgisprocess:::qgis_default_value(), SPOKE_FIELD = qgisprocess:::qgis_default_value(), SPOKE_FIELDS = qgisprocess:::qgis_default_value(), GEODESIC = qgisprocess:::qgis_default_value(), GEODESIC_DISTANCE = qgisprocess:::qgis_default_value(), ANTIMERIDIAN_SPLIT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:hublines")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:hublines", `HUBS` = HUBS, `HUB_FIELD` = HUB_FIELD, `HUB_FIELDS` = HUB_FIELDS, `SPOKES` = SPOKES, `SPOKE_FIELD` = SPOKE_FIELD, `SPOKE_FIELDS` = SPOKE_FIELDS, `GEODESIC` = GEODESIC, `GEODESIC_DISTANCE` = GEODESIC_DISTANCE, `ANTIMERIDIAN_SPLIT` = ANTIMERIDIAN_SPLIT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:hublines", `HUBS` = HUBS, `HUB_FIELD` = HUB_FIELD, `HUB_FIELDS` = HUB_FIELDS, `SPOKES` = SPOKES, `SPOKE_FIELD` = SPOKE_FIELD, `SPOKE_FIELDS` = SPOKE_FIELDS, `GEODESIC` = GEODESIC, `GEODESIC_DISTANCE` = GEODESIC_DISTANCE, `ANTIMERIDIAN_SPLIT` = ANTIMERIDIAN_SPLIT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}