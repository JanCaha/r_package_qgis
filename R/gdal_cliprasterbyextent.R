##' QGIS Algorithm provided by GDAL Clip raster by extent (gdal:cliprasterbyextent)
##'
##' @title QGIS algorithm Clip raster by extent
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param PROJWIN `extent` - Clipping extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param OVERCRS `boolean` - Override the projection for the output file. 1 for true/yes. 0 for false/no.
##' @param NODATA `number` - Assign a specified nodata value to output bands. A numeric value.
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param DATA_TYPE `enum`  of `("Use Input Layer Data Type", "Byte", "Int16", "UInt16", "UInt32", "Int32", "Float32", "Float64", "CInt16", "CInt32", "CFloat32", "CFloat64")` - Output data type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param EXTRA `string` - Additional command-line parameters. String value.
##' @param OUTPUT `rasterDestination` - Clipped (extent). Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Clipped (extent)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_cliprasterbyextent <- function(INPUT = qgisprocess:::qgis_default_value(), PROJWIN = qgisprocess:::qgis_default_value(), OVERCRS = qgisprocess:::qgis_default_value(), NODATA = qgisprocess:::qgis_default_value(), OPTIONS = qgisprocess:::qgis_default_value(), DATA_TYPE = qgisprocess:::qgis_default_value(), EXTRA = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:cliprasterbyextent")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:cliprasterbyextent", `INPUT` = INPUT, `PROJWIN` = PROJWIN, `OVERCRS` = OVERCRS, `NODATA` = NODATA, `OPTIONS` = OPTIONS, `DATA_TYPE` = DATA_TYPE, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:cliprasterbyextent", `INPUT` = INPUT, `PROJWIN` = PROJWIN, `OVERCRS` = OVERCRS, `NODATA` = NODATA, `OPTIONS` = OPTIONS, `DATA_TYPE` = DATA_TYPE, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}