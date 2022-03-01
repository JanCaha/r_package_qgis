##' QGIS Algorithm provided by QGIS (native c++) Split vector layer (native:splitvectorlayer)
##'
##' @title QGIS algorithm Split vector layer
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Unique ID field. The name of an existing field. ; delimited list of existing field names.
##' @param FILE_TYPE `enum`  of `("gpkg", "shp", "000", "bna", "csv", "dgn", "dxf", "geojson", "geojsonl", "geojsons", "gml", "gpx", "gxt", "ili", "itf", "json", "kml", "ods", "sql", "sqlite", "tab", "txt", "xlsx", "xml", "xtf")` - Output file type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `folderDestination` - Output directory. Path for an existing or new folder.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputFolder - Output directory
##' * OUTPUT_LAYERS - outputMultilayer - Output layers
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_splitvectorlayer <- function(INPUT = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), FILE_TYPE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:splitvectorlayer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:splitvectorlayer", `INPUT` = INPUT, `FIELD` = FIELD, `FILE_TYPE` = FILE_TYPE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:splitvectorlayer", `INPUT` = INPUT, `FIELD` = FIELD, `FILE_TYPE` = FILE_TYPE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}