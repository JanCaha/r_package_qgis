##' QGIS Algorithm provided by GDAL Raster information (gdal:gdalinfo)
##'
##' @title QGIS algorithm Raster information
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param MIN_MAX `boolean` - Force computation of the actual min/max values for each band. 1 for true/yes. 0 for false/no.
##' @param STATS `boolean` - Read and display image statistics (force computation if necessary). 1 for true/yes. 0 for false/no.
##' @param NOGCP `boolean` - Suppress GCP info. 1 for true/yes. 0 for false/no.
##' @param NO_METADATA `boolean` - Suppress metadata info. 1 for true/yes. 0 for false/no.
##' @param EXTRA `string` - Additional command-line parameters. String value.
##' @param OUTPUT `fileDestination` - Layer information. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputHtml - Layer information
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_gdalinfo <- function(INPUT = qgisprocess::qgis_default_value(), MIN_MAX = qgisprocess::qgis_default_value(), STATS = qgisprocess::qgis_default_value(), NOGCP = qgisprocess::qgis_default_value(), NO_METADATA = qgisprocess::qgis_default_value(), EXTRA = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("gdal:gdalinfo")
  output <- qgisprocess::qgis_run_algorithm("gdal:gdalinfo",`INPUT` = INPUT, `MIN_MAX` = MIN_MAX, `STATS` = STATS, `NOGCP` = NOGCP, `NO_METADATA` = NO_METADATA, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}