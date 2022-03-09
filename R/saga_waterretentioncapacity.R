##' QGIS Algorithm provided by SAGA Water retention capacity (saga:waterretentioncapacity)
##'
##' @title QGIS algorithm Water retention capacity
##'
##' @param SHAPES `source` - Plot Holes. Path to a vector layer.
##' @param DEM `raster` - DEM. Path to a raster layer.
##' @param OUTPUT `vectorDestination` - Final Parameters. Path for new vector layer.
##' @param RETENTION `rasterDestination` - Water Retention Capacity. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Final Parameters
##' * RETENTION - outputRaster - Water Retention Capacity
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_waterretentioncapacity <- function(SHAPES = qgisprocess::qgis_default_value(), DEM = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), RETENTION = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:waterretentioncapacity")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:waterretentioncapacity", `SHAPES` = SHAPES, `DEM` = DEM, `OUTPUT` = OUTPUT, `RETENTION` = RETENTION,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:waterretentioncapacity", `SHAPES` = SHAPES, `DEM` = DEM, `OUTPUT` = OUTPUT, `RETENTION` = RETENTION,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}