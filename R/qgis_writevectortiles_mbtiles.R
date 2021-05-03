##' QGIS Algorithm provided by QGIS (native c++) Write Vector Tiles (MBTiles) (native:writevectortiles_mbtiles)
##'
##' @title QGIS algorithm Write Vector Tiles (MBTiles)
##'
##' @param OUTPUT `fileDestination` - Destination MBTiles. Path for new file.
##' @param LAYERS `vectortilewriterlayers` - Input layers. .
##' @param MIN_ZOOM `number` - Minimum zoom level. A numeric value.
##' @param MAX_ZOOM `number` - Maximum zoom level. A numeric value.
##' @param EXTENT `extent` - Extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param META_NAME `string` - Metadata: Name. String value.
##' @param META_DESCRIPTION `string` - Metadata: Description. String value.
##' @param META_ATTRIBUTION `string` - Metadata: Attribution. String value.
##' @param META_VERSION `string` - Metadata: Version. String value.
##' @param META_TYPE `string` - Metadata: Type. String value.
##' @param META_CENTER `string` - Metadata: Center. String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputFile - Destination MBTiles
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_writevectortiles_mbtiles <- function(OUTPUT = qgisprocess::qgis_default_value(), LAYERS = qgisprocess::qgis_default_value(), MIN_ZOOM = qgisprocess::qgis_default_value(), MAX_ZOOM = qgisprocess::qgis_default_value(), EXTENT = qgisprocess::qgis_default_value(), META_NAME = qgisprocess::qgis_default_value(), META_DESCRIPTION = qgisprocess::qgis_default_value(), META_ATTRIBUTION = qgisprocess::qgis_default_value(), META_VERSION = qgisprocess::qgis_default_value(), META_TYPE = qgisprocess::qgis_default_value(), META_CENTER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:writevectortiles_mbtiles")
  output <- qgisprocess::qgis_run_algorithm("native:writevectortiles_mbtiles",`OUTPUT` = OUTPUT, `LAYERS` = LAYERS, `MIN_ZOOM` = MIN_ZOOM, `MAX_ZOOM` = MAX_ZOOM, `EXTENT` = EXTENT, `META_NAME` = META_NAME, `META_DESCRIPTION` = META_DESCRIPTION, `META_ATTRIBUTION` = META_ATTRIBUTION, `META_VERSION` = META_VERSION, `META_TYPE` = META_TYPE, `META_CENTER` = META_CENTER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}