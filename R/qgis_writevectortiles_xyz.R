##' QGIS Algorithm provided by QGIS (native c++) Write Vector Tiles (XYZ) (native:writevectortiles_xyz). Exports one or more vector layers to vector tiles. This algorithm exports one or more vector layers to vector tiles - a data format optimized for fast map rendering and small data size.
##'
##' @title QGIS algorithm - Write Vector Tiles (XYZ)
##'
##' @param OUTPUT_DIRECTORY `folderDestination` - Output directory. Path for an existing or new folder.
##' @param XYZ_TEMPLATE `string` - File template. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param LAYERS `vectortilewriterlayers` - Input layers. .
##' @param MIN_ZOOM `number` - Minimum zoom level. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAX_ZOOM `number` - Maximum zoom level. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXTENT `extent` - Extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT_DIRECTORY - outputFolder - Output directory
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_writevectortiles_xyz <- function(OUTPUT_DIRECTORY = qgisprocess:::qgis_default_value(), XYZ_TEMPLATE = qgisprocess:::qgis_default_value(), LAYERS = qgisprocess:::qgis_default_value(), MIN_ZOOM = qgisprocess:::qgis_default_value(), MAX_ZOOM = qgisprocess:::qgis_default_value(), EXTENT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:writevectortiles_xyz")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:writevectortiles_xyz", `OUTPUT_DIRECTORY` = OUTPUT_DIRECTORY, `XYZ_TEMPLATE` = XYZ_TEMPLATE, `LAYERS` = LAYERS, `MIN_ZOOM` = MIN_ZOOM, `MAX_ZOOM` = MAX_ZOOM, `EXTENT` = EXTENT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:writevectortiles_xyz", `OUTPUT_DIRECTORY` = OUTPUT_DIRECTORY, `XYZ_TEMPLATE` = XYZ_TEMPLATE, `LAYERS` = LAYERS, `MIN_ZOOM` = MIN_ZOOM, `MAX_ZOOM` = MAX_ZOOM, `EXTENT` = EXTENT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT_DIRECTORY")
  }
}