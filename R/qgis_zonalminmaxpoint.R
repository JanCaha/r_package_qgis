##' QGIS Algorithm provided by QGIS (native c++) Zonal minimum/maximum point (native:zonalminmaxpoint). Extracts point locations for minimum and maximum raster values within polygon zones. This algorithm extracts point features corresponding to the minimum and maximum pixel values contained within polygon zones.  The output will contain one point feature for the minimum and one for the maximum raster value for every individual zonal feature from a polygon layer.  The created point layer will be in the same spatial reference system as the selected raster layer.  ---------------- Notes ----------------   - This algorithm drops existing primary keys or FID values and regenerates them in output layers.
##'
##' @title QGIS algorithm - Zonal minimum/maximum point
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param INPUT_RASTER `raster` - Raster layer. Path to a raster layer.
##' @param RASTER_BAND `band` - Raster band. Integer value representing an existing raster band number.
##' @param OUTPUT `sink` - Zonal Extrema. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Zonal Extrema
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_zonalminmaxpoint <- function(INPUT = qgisprocess:::qgis_default_value(), INPUT_RASTER = qgisprocess:::qgis_default_value(), RASTER_BAND = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:zonalminmaxpoint")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:zonalminmaxpoint", `INPUT` = INPUT, `INPUT_RASTER` = INPUT_RASTER, `RASTER_BAND` = RASTER_BAND, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:zonalminmaxpoint", `INPUT` = INPUT, `INPUT_RASTER` = INPUT_RASTER, `RASTER_BAND` = RASTER_BAND, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}