##' QGIS Algorithm provided by QGIS (native c++) Export layers to DXF (native:dxfexport)
##'
##' @title QGIS algorithm Export layers to DXF
##'
##' @param LAYERS `dxflayers` - Input layers. .
##' @param SYMBOLOGY_MODE `enum`  of `("No Symbology", "Feature Symbology", "Symbol Layer Symbology")` - Symbology mode. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SYMBOLOGY_SCALE `scale` - Symbology scale. A numeric value representing the scale denominator.
##' @param ENCODING `enum`  of `("ISO-8859-1", "ISO-8859-2", "ISO-8859-3", "ISO-8859-4", "ISO-8859-5", "ISO-8859-6", "ISO-8859-7", "ISO-8859-8", "ISO-8859-9", "Shift_JIS", "Big5", "CP936", "GB2312")` - Encoding. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CRS `crs` - CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param USE_LAYER_TITLE `boolean` - Use layer title as name. 1 for true/yes. 0 for false/no.
##' @param FORCE_2D `boolean` - Force 2D output. 1 for true/yes. 0 for false/no.
##' @param MTEXT `boolean` - Export labels as MTEXT elements. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `fileDestination` - DXF. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputFile - DXF
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_dxfexport <- function(LAYERS = qgisprocess::qgis_default_value(), SYMBOLOGY_MODE = qgisprocess::qgis_default_value(), SYMBOLOGY_SCALE = qgisprocess::qgis_default_value(), ENCODING = qgisprocess::qgis_default_value(), CRS = qgisprocess::qgis_default_value(), USE_LAYER_TITLE = qgisprocess::qgis_default_value(), FORCE_2D = qgisprocess::qgis_default_value(), MTEXT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:dxfexport")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:dxfexport", `LAYERS` = LAYERS, `SYMBOLOGY_MODE` = SYMBOLOGY_MODE, `SYMBOLOGY_SCALE` = SYMBOLOGY_SCALE, `ENCODING` = ENCODING, `CRS` = CRS, `USE_LAYER_TITLE` = USE_LAYER_TITLE, `FORCE_2D` = FORCE_2D, `MTEXT` = MTEXT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:dxfexport", `LAYERS` = LAYERS, `SYMBOLOGY_MODE` = SYMBOLOGY_MODE, `SYMBOLOGY_SCALE` = SYMBOLOGY_SCALE, `ENCODING` = ENCODING, `CRS` = CRS, `USE_LAYER_TITLE` = USE_LAYER_TITLE, `FORCE_2D` = FORCE_2D, `MTEXT` = MTEXT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}