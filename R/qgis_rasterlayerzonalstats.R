##' QGIS Algorithm provided by QGIS (native c++) Raster layer zonal statistics (native:rasterlayerzonalstats)
##'
##' @title QGIS algorithm Raster layer zonal statistics
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param ZONES `raster` - Zones layer. Path to a raster layer.
##' @param ZONES_BAND `band` - Zones band number. Integer value representing an existing raster band number.
##' @param REF_LAYER `enum`  of `("Input layer", "Zones layer")` - Reference layer. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT_TABLE `sink` - Statistics. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * CRS_AUTHID - outputString - CRS authority identifier
##' * EXTENT - outputString - Extent
##' * HEIGHT_IN_PIXELS - outputNumber - Height in pixels
##' * NODATA_PIXEL_COUNT - outputNumber - NODATA pixel count
##' * OUTPUT_TABLE - outputVector - Statistics
##' * TOTAL_PIXEL_COUNT - outputNumber - Total pixel count
##' * WIDTH_IN_PIXELS - outputNumber - Width in pixels
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_rasterlayerzonalstats <- function(INPUT = qgisprocess::qgis_default_value(), BAND = qgisprocess::qgis_default_value(), ZONES = qgisprocess::qgis_default_value(), ZONES_BAND = qgisprocess::qgis_default_value(), REF_LAYER = qgisprocess::qgis_default_value(), OUTPUT_TABLE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:rasterlayerzonalstats")

  output <- qgisprocess::qgis_run_algorithm("native:rasterlayerzonalstats", `INPUT` = INPUT, `BAND` = BAND, `ZONES` = ZONES, `ZONES_BAND` = ZONES_BAND, `REF_LAYER` = REF_LAYER, `OUTPUT_TABLE` = OUTPUT_TABLE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CRS_AUTHID")
  }
}