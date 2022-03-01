##' QGIS Algorithm provided by QGIS (native c++) Drape (set Z value from raster) (native:setzfromraster)
##'
##' @title QGIS algorithm Drape (set Z value from raster)
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param RASTER `raster` - Raster layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param NODATA `number` - Value for nodata or non-intersecting vertices. A numeric value.
##' @param SCALE `number` - Scale factor. A numeric value.
##' @param OUTPUT `sink` - Draped. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Draped
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_setzfromraster <- function(INPUT = qgisprocess::qgis_default_value(), RASTER = qgisprocess::qgis_default_value(), BAND = qgisprocess::qgis_default_value(), NODATA = qgisprocess::qgis_default_value(), SCALE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:setzfromraster")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:setzfromraster", `INPUT` = INPUT, `RASTER` = RASTER, `BAND` = BAND, `NODATA` = NODATA, `SCALE` = SCALE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:setzfromraster", `INPUT` = INPUT, `RASTER` = RASTER, `BAND` = BAND, `NODATA` = NODATA, `SCALE` = SCALE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}