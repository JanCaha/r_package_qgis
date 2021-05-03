##' QGIS Algorithm provided by QGIS (native c++) Sample raster values (native:rastersampling)
##'
##' @title QGIS algorithm Sample raster values
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param RASTERCOPY `raster` - Raster layer. Path to a raster layer.
##' @param COLUMN_PREFIX `string` - Output column prefix. String value.
##' @param OUTPUT `sink` - Sampled. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Sampled
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_rastersampling <- function(INPUT = qgisprocess::qgis_default_value(), RASTERCOPY = qgisprocess::qgis_default_value(), COLUMN_PREFIX = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:rastersampling")

  output <- qgisprocess::qgis_run_algorithm("native:rastersampling", `INPUT` = INPUT, `RASTERCOPY` = RASTERCOPY, `COLUMN_PREFIX` = COLUMN_PREFIX, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}