##' QGIS Algorithm provided by GDAL Vector information (gdal:ogrinfo)
##'
##' @title QGIS algorithm Vector information
##'
##' @param INPUT `vector` - Input layer. Path to a vector layer.
##' @param SUMMARY_ONLY `boolean` - Summary output only. 1 for true/yes. 0 for false/no.
##' @param NO_METADATA `boolean` - Suppress metadata info. 1 for true/yes. 0 for false/no.
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

gdal_ogrinfo <- function(INPUT = qgisprocess::qgis_default_value(), SUMMARY_ONLY = qgisprocess::qgis_default_value(), NO_METADATA = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("gdal:ogrinfo",`INPUT` = INPUT, `SUMMARY_ONLY` = SUMMARY_ONLY, `NO_METADATA` = NO_METADATA, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}