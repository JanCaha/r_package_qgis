##' QGIS Algorithm provided by SAGA Land surface temperature (saga:landsurfacetemperature)
##'
##' @title QGIS algorithm Land surface temperature
##'
##' @param DEM `raster` - Elevation (m). Path to a raster layer.
##' @param SWR `raster` - Short Wave Radiation (kW/m2). Path to a raster layer.
##' @param LAI `raster` - Leaf Area Index. Path to a raster layer.
##' @param Z_REFERENCE `number` - Elevation at Reference Station (m). A numeric value.
##' @param T_REFERENCE `number` - Temperature at Reference Station (Deg.Celsius). A numeric value.
##' @param T_GRADIENT `number` - Temperature Gradient (Deg.Celsius/km). A numeric value.
##' @param C_FACTOR `number` - C Factor. A numeric value.
##' @param LST `rasterDestination` - Land Surface Temperature (Deg.Celsius). Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * LST - outputRaster - Land Surface Temperature (Deg.Celsius)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_landsurfacetemperature <- function(DEM = qgisprocess::qgis_default_value(), SWR = qgisprocess::qgis_default_value(), LAI = qgisprocess::qgis_default_value(), Z_REFERENCE = qgisprocess::qgis_default_value(), T_REFERENCE = qgisprocess::qgis_default_value(), T_GRADIENT = qgisprocess::qgis_default_value(), C_FACTOR = qgisprocess::qgis_default_value(), LST = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:landsurfacetemperature")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:landsurfacetemperature", `DEM` = DEM, `SWR` = SWR, `LAI` = LAI, `Z_REFERENCE` = Z_REFERENCE, `T_REFERENCE` = T_REFERENCE, `T_GRADIENT` = T_GRADIENT, `C_FACTOR` = C_FACTOR, `LST` = LST,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:landsurfacetemperature", `DEM` = DEM, `SWR` = SWR, `LAI` = LAI, `Z_REFERENCE` = Z_REFERENCE, `T_REFERENCE` = T_REFERENCE, `T_GRADIENT` = T_GRADIENT, `C_FACTOR` = C_FACTOR, `LST` = LST,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "LST")
  }
}