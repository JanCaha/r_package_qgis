##' QGIS Algorithm provided by QGIS (native c++) Write Vector Tiles (XYZ) (native:writevectortiles_xyz)
##'
##' @title QGIS algorithm Write Vector Tiles (XYZ)
##'
##' @param OUTPUT_DIRECTORY `folderDestination` - Output directory. Path for an existing or new folder.
##' @param XYZ_TEMPLATE `string` - File template. String value.
##' @param LAYERS `vectortilewriterlayers` - Input layers. .
##' @param MIN_ZOOM `number` - Minimum zoom level. A numeric value.
##' @param MAX_ZOOM `number` - Maximum zoom level. A numeric value.
##' @param EXTENT `extent` - Extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT_DIRECTORY - outputFolder - Output directory
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_writevectortiles_xyz <- function(OUTPUT_DIRECTORY = qgisprocess::qgis_default_value(), XYZ_TEMPLATE = qgisprocess::qgis_default_value(), LAYERS = qgisprocess::qgis_default_value(), MIN_ZOOM = qgisprocess::qgis_default_value(), MAX_ZOOM = qgisprocess::qgis_default_value(), EXTENT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:writevectortiles_xyz")
  output <- qgisprocess::qgis_run_algorithm("native:writevectortiles_xyz",`OUTPUT_DIRECTORY` = OUTPUT_DIRECTORY, `XYZ_TEMPLATE` = XYZ_TEMPLATE, `LAYERS` = LAYERS, `MIN_ZOOM` = MIN_ZOOM, `MAX_ZOOM` = MAX_ZOOM, `EXTENT` = EXTENT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT_DIRECTORY")
  }
}