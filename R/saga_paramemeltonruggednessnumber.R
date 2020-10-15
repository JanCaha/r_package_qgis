##' QGIS Algorithm provided by SAGA Paramemelton ruggedness number (saga:paramemeltonruggednessnumber)
##'
##' @title QGIS algorithm Paramemelton ruggedness number
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param AREA `rasterDestination` - Catchment Area. Path for new raster layer.
##' @param ZMAX `rasterDestination` - Maximum Height. Path for new raster layer.
##' @param MRN `rasterDestination` - Melton Ruggedness Number. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * AREA - outputRaster - Catchment Area
##' * ZMAX - outputRaster - Maximum Height
##' * MRN - outputRaster - Melton Ruggedness Number
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_paramemeltonruggednessnumber <- function(DEM = qgisprocess::qgis_default_value(), AREA = qgisprocess::qgis_default_value(), ZMAX = qgisprocess::qgis_default_value(), MRN = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:paramemeltonruggednessnumber",`DEM` = DEM, `AREA` = AREA, `ZMAX` = ZMAX, `MRN` = MRN,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "AREA")
}
}