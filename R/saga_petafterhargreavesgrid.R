##' QGIS Algorithm provided by SAGA Pet (after hargreaves, grid) (saga:petafterhargreavesgrid)
##'
##' @title QGIS algorithm Pet (after hargreaves, grid)
##'
##' @param T `raster` - Mean Temperature. Path to a raster layer.
##' @param T_MIN `raster` - Minimum Temperature. Path to a raster layer.
##' @param T_MAX `raster` - Maximum Temperature. Path to a raster layer.
##' @param PET `rasterDestination` - Potential Evapotranspiration. Path for new raster layer.
##' @param LAT `number` - Latitude (Degree). A numeric value.
##' @param TIME `enum`  of `("[0] day", "[1] month")` - Time. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MONTH `enum`  of `("[0] January", "[1] February", "[2] March", "[3] April", "[4] May", "[5] June", "[6] July", "[7] August", "[8] September", "[9] October", "[10] November", "[11] December")` - Month. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DAY `number` - Day of Month. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * PET - outputRaster - Potential Evapotranspiration
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_petafterhargreavesgrid <- function(T = qgisprocess::qgis_default_value(), T_MIN = qgisprocess::qgis_default_value(), T_MAX = qgisprocess::qgis_default_value(), PET = qgisprocess::qgis_default_value(), LAT = qgisprocess::qgis_default_value(), TIME = qgisprocess::qgis_default_value(), MONTH = qgisprocess::qgis_default_value(), DAY = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:petafterhargreavesgrid")

  output <- qgisprocess::qgis_run_algorithm("saga:petafterhargreavesgrid", `T` = T, `T_MIN` = T_MIN, `T_MAX` = T_MAX, `PET` = PET, `LAT` = LAT, `TIME` = TIME, `MONTH` = MONTH, `DAY` = DAY,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "PET")
  }
}