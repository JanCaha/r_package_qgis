##' QGIS Algorithm provided by QGIS (native c++) Join by lines (hub lines) (native:hublines)
##'
##' @title QGIS algorithm Join by lines (hub lines)
##'
##' @param HUBS `source` - Hub layer. Path to a vector layer.
##' @param HUB_FIELD `field` - Hub ID field. The name of an existing field. ; delimited list of existing field names.
##' @param HUB_FIELDS `field` - Hub layer fields to copy (leave empty to copy all fields). The name of an existing field. ; delimited list of existing field names.
##' @param SPOKES `source` - Spoke layer. Path to a vector layer.
##' @param SPOKE_FIELD `field` - Spoke ID field. The name of an existing field. ; delimited list of existing field names.
##' @param SPOKE_FIELDS `field` - Spoke layer fields to copy (leave empty to copy all fields). The name of an existing field. ; delimited list of existing field names.
##' @param GEODESIC `boolean` - Create geodesic lines. 1 for true/yes. 0 for false/no.
##' @param GEODESIC_DISTANCE `distance` - Distance between vertices (geodesic lines only). A numeric value.
##' @param ANTIMERIDIAN_SPLIT `boolean` - Split lines at antimeridian (±180 degrees longitude). 1 for true/yes. 0 for false/no.
##' @param OUTPUT `sink` - Hub lines. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Hub lines
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_hublines <- function(HUBS = qgisprocess::qgis_default_value(), HUB_FIELD = qgisprocess::qgis_default_value(), HUB_FIELDS = qgisprocess::qgis_default_value(), SPOKES = qgisprocess::qgis_default_value(), SPOKE_FIELD = qgisprocess::qgis_default_value(), SPOKE_FIELDS = qgisprocess::qgis_default_value(), GEODESIC = qgisprocess::qgis_default_value(), GEODESIC_DISTANCE = qgisprocess::qgis_default_value(), ANTIMERIDIAN_SPLIT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:hublines",`HUBS` = HUBS, `HUB_FIELD` = HUB_FIELD, `HUB_FIELDS` = HUB_FIELDS, `SPOKES` = SPOKES, `SPOKE_FIELD` = SPOKE_FIELD, `SPOKE_FIELDS` = SPOKE_FIELDS, `GEODESIC` = GEODESIC, `GEODESIC_DISTANCE` = GEODESIC_DISTANCE, `ANTIMERIDIAN_SPLIT` = ANTIMERIDIAN_SPLIT, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}