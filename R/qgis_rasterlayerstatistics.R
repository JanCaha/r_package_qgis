##' QGIS Algorithm provided by QGIS (native c++) Raster layer statistics (native:rasterlayerstatistics)
##'
##' @title QGIS algorithm Raster layer statistics
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param OUTPUT_HTML_FILE `fileDestination` - Statistics. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT_HTML_FILE - outputHtml - Statistics
##' * MIN - outputNumber - Minimum value
##' * MAX - outputNumber - Maximum value
##' * RANGE - outputNumber - Range
##' * SUM - outputNumber - Sum
##' * MEAN - outputNumber - Mean value
##' * STD_DEV - outputNumber - Standard deviation
##' * SUM_OF_SQUARES - outputNumber - Sum of the squares
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_rasterlayerstatistics <- function(INPUT = qgisprocess::qgis_default_value(), BAND = qgisprocess::qgis_default_value(), OUTPUT_HTML_FILE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:rasterlayerstatistics")
  output <- qgisprocess::qgis_run_algorithm("native:rasterlayerstatistics",`INPUT` = INPUT, `BAND` = BAND, `OUTPUT_HTML_FILE` = OUTPUT_HTML_FILE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT_HTML_FILE")
  }
}