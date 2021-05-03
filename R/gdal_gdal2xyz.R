##' QGIS Algorithm provided by GDAL gdal2xyz (gdal:gdal2xyz)
##'
##' @title QGIS algorithm gdal2xyz
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param CSV `boolean` - Output comma-separated values. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `fileDestination` - XYZ ASCII file. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputFile - XYZ ASCII file
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_gdal2xyz <- function(INPUT = qgisprocess::qgis_default_value(), BAND = qgisprocess::qgis_default_value(), CSV = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("gdal:gdal2xyz")

  output <- qgisprocess::qgis_run_algorithm("gdal:gdal2xyz", `INPUT` = INPUT, `BAND` = BAND, `CSV` = CSV, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}