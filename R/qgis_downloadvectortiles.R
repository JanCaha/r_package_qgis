##' QGIS Algorithm provided by QGIS (native c++) Download vector tiles (native:downloadvectortiles). Downloads vector tiles of the input vector tile layer and saves them in the local vector tile file. This algorithm downloads vector tiles of the input vector tile layer and saves them in the local vector tile file.
##'
##' @title QGIS algorithm - Download vector tiles
##'
##' @param INPUT `layer` - Input layer. Path to a vector, raster or mesh layer.
##' @param EXTENT `extent` - Extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param MAX_ZOOM `number` - Maximum zoom level to download. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TILE_LIMIT `number` - Tile limit. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `vectorTileDestination` - Output. Path for new vector tile layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVectorTile - Output
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_downloadvectortiles <- function(INPUT = qgisprocess:::qgis_default_value(), EXTENT = qgisprocess:::qgis_default_value(), MAX_ZOOM = qgisprocess:::qgis_default_value(), TILE_LIMIT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:downloadvectortiles")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:downloadvectortiles", `INPUT` = INPUT, `EXTENT` = EXTENT, `MAX_ZOOM` = MAX_ZOOM, `TILE_LIMIT` = TILE_LIMIT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:downloadvectortiles", `INPUT` = INPUT, `EXTENT` = EXTENT, `MAX_ZOOM` = MAX_ZOOM, `TILE_LIMIT` = TILE_LIMIT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}