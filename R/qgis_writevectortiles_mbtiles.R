##' QGIS Algorithm provided by QGIS (native c++) Write Vector Tiles (MBTiles) (native:writevectortiles_mbtiles). Exports one or more vector layers to vector tiles. This algorithm exports one or more vector layers to vector tiles - a data format optimized for fast map rendering and small data size.
##'
##' @title QGIS algorithm - Write Vector Tiles (MBTiles)
##'
##' @param OUTPUT `vectorTileDestination` - Destination MBTiles. Path for new vector tile layer.
##' @param LAYERS `vectortilewriterlayers` - Input layers. .
##' @param MIN_ZOOM `number` - Minimum zoom level. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAX_ZOOM `number` - Maximum zoom level. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXTENT `extent` - Extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param META_NAME `string` - Metadata: Name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param META_DESCRIPTION `string` - Metadata: Description. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param META_ATTRIBUTION `string` - Metadata: Attribution. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param META_VERSION `string` - Metadata: Version. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param META_TYPE `string` - Metadata: Type. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param META_CENTER `string` - Metadata: Center. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVectorTile - Destination MBTiles
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_writevectortiles_mbtiles <- function(OUTPUT = qgisprocess:::qgis_default_value(), LAYERS = qgisprocess:::qgis_default_value(), MIN_ZOOM = qgisprocess:::qgis_default_value(), MAX_ZOOM = qgisprocess:::qgis_default_value(), EXTENT = qgisprocess:::qgis_default_value(), META_NAME = qgisprocess:::qgis_default_value(), META_DESCRIPTION = qgisprocess:::qgis_default_value(), META_ATTRIBUTION = qgisprocess:::qgis_default_value(), META_VERSION = qgisprocess:::qgis_default_value(), META_TYPE = qgisprocess:::qgis_default_value(), META_CENTER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:writevectortiles_mbtiles")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:writevectortiles_mbtiles", `OUTPUT` = OUTPUT, `LAYERS` = LAYERS, `MIN_ZOOM` = MIN_ZOOM, `MAX_ZOOM` = MAX_ZOOM, `EXTENT` = EXTENT, `META_NAME` = META_NAME, `META_DESCRIPTION` = META_DESCRIPTION, `META_ATTRIBUTION` = META_ATTRIBUTION, `META_VERSION` = META_VERSION, `META_TYPE` = META_TYPE, `META_CENTER` = META_CENTER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:writevectortiles_mbtiles", `OUTPUT` = OUTPUT, `LAYERS` = LAYERS, `MIN_ZOOM` = MIN_ZOOM, `MAX_ZOOM` = MAX_ZOOM, `EXTENT` = EXTENT, `META_NAME` = META_NAME, `META_DESCRIPTION` = META_DESCRIPTION, `META_ATTRIBUTION` = META_ATTRIBUTION, `META_VERSION` = META_VERSION, `META_TYPE` = META_TYPE, `META_CENTER` = META_CENTER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}