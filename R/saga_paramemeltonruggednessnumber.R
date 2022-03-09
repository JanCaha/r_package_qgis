##' QGIS Algorithm provided by SAGA Paramemelton ruggedness number (saga:paramemeltonruggednessnumber)
##'
##' @title QGIS algorithm Paramemelton ruggedness number
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param AREA `rasterDestination` - Catchment Area. Path for new raster layer.
##' @param ZMAX `rasterDestination` - Maximum Height. Path for new raster layer.
##' @param MRN `rasterDestination` - Melton Ruggedness Number. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * AREA - outputRaster - Catchment Area
##' * MRN - outputRaster - Melton Ruggedness Number
##' * ZMAX - outputRaster - Maximum Height
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_paramemeltonruggednessnumber <- function(DEM = qgisprocess::qgis_default_value(), AREA = qgisprocess::qgis_default_value(), ZMAX = qgisprocess::qgis_default_value(), MRN = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:paramemeltonruggednessnumber")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:paramemeltonruggednessnumber", `DEM` = DEM, `AREA` = AREA, `ZMAX` = ZMAX, `MRN` = MRN,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:paramemeltonruggednessnumber", `DEM` = DEM, `AREA` = AREA, `ZMAX` = ZMAX, `MRN` = MRN,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "AREA")
  }
}