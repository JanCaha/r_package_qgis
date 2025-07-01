##' QGIS Algorithm provided by QGIS (native c++) Generate elevation profile image (native:generateelevationprofileimage). Creates an elevation profile image from a list of map layer and an optional terrain. This algorithm creates an elevation profile image from a list of map layer and an optional terrain.
##'
##' @title QGIS algorithm - Generate elevation profile image
##'
##' @param CURVE `geometry` - Profile curve. Well-Known Text string (WKT).
##' @param MAP_LAYERS `multilayer` - Map layers. .
##' @param WIDTH `number` - Chart width (in pixels). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param HEIGHT `number` - Chart height (in pixels). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TERRAIN_LAYER `layer` - Terrain layer. Path to a vector, raster or mesh layer.
##' @param MINIMUM_DISTANCE `number` - Chart minimum distance (X axis). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAXIMUM_DISTANCE `number` - Chart maximum distance (X axis). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MINIMUM_ELEVATION `number` - Chart minimum elevation (Y axis). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAXIMUM_ELEVATION `number` - Chart maximum elevation (Y axis). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TEXT_COLOR `color` - Chart text color. String representation of color, e.g #ff0000 or rgba(200,100,50,0.8). field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param BACKGROUND_COLOR `color` - Chart background color. String representation of color, e.g #ff0000 or rgba(200,100,50,0.8). field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param BORDER_COLOR `color` - Chart border color. String representation of color, e.g #ff0000 or rgba(200,100,50,0.8). field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TOLERANCE `number` - Profile tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DPI `number` - Chart DPI. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `fileDestination` - Output image. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputFile - Output image
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_generateelevationprofileimage <- function(CURVE = qgisprocess:::qgis_default_value(), MAP_LAYERS = qgisprocess:::qgis_default_value(), WIDTH = qgisprocess:::qgis_default_value(), HEIGHT = qgisprocess:::qgis_default_value(), TERRAIN_LAYER = qgisprocess:::qgis_default_value(), MINIMUM_DISTANCE = qgisprocess:::qgis_default_value(), MAXIMUM_DISTANCE = qgisprocess:::qgis_default_value(), MINIMUM_ELEVATION = qgisprocess:::qgis_default_value(), MAXIMUM_ELEVATION = qgisprocess:::qgis_default_value(), TEXT_COLOR = qgisprocess:::qgis_default_value(), BACKGROUND_COLOR = qgisprocess:::qgis_default_value(), BORDER_COLOR = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(), DPI = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:generateelevationprofileimage")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:generateelevationprofileimage", `CURVE` = CURVE, `MAP_LAYERS` = MAP_LAYERS, `WIDTH` = WIDTH, `HEIGHT` = HEIGHT, `TERRAIN_LAYER` = TERRAIN_LAYER, `MINIMUM_DISTANCE` = MINIMUM_DISTANCE, `MAXIMUM_DISTANCE` = MAXIMUM_DISTANCE, `MINIMUM_ELEVATION` = MINIMUM_ELEVATION, `MAXIMUM_ELEVATION` = MAXIMUM_ELEVATION, `TEXT_COLOR` = TEXT_COLOR, `BACKGROUND_COLOR` = BACKGROUND_COLOR, `BORDER_COLOR` = BORDER_COLOR, `TOLERANCE` = TOLERANCE, `DPI` = DPI, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:generateelevationprofileimage", `CURVE` = CURVE, `MAP_LAYERS` = MAP_LAYERS, `WIDTH` = WIDTH, `HEIGHT` = HEIGHT, `TERRAIN_LAYER` = TERRAIN_LAYER, `MINIMUM_DISTANCE` = MINIMUM_DISTANCE, `MAXIMUM_DISTANCE` = MAXIMUM_DISTANCE, `MINIMUM_ELEVATION` = MINIMUM_ELEVATION, `MAXIMUM_ELEVATION` = MAXIMUM_ELEVATION, `TEXT_COLOR` = TEXT_COLOR, `BACKGROUND_COLOR` = BACKGROUND_COLOR, `BORDER_COLOR` = BORDER_COLOR, `TOLERANCE` = TOLERANCE, `DPI` = DPI, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}