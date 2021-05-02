##' QGIS Algorithm provided by QGIS Hypsometric curves (qgis:hypsometriccurves)
##'
##' @title QGIS algorithm Hypsometric curves
##'
##' @param INPUT_DEM `raster` - DEM to analyze. Path to a raster layer.
##' @param BOUNDARY_LAYER `source` - Boundary layer. Path to a vector layer.
##' @param STEP `number` - Step. A numeric value.
##' @param USE_PERCENTAGE `boolean` - Use % of area instead of absolute value. 1 for true/yes. 0 for false/no.
##' @param OUTPUT_DIRECTORY `folderDestination` - Hypsometric curves. Path for an existing or new folder.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT_DIRECTORY - outputFolder - Hypsometric curves
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_hypsometriccurves <- function(INPUT_DEM = qgisprocess::qgis_default_value(), BOUNDARY_LAYER = qgisprocess::qgis_default_value(), STEP = qgisprocess::qgis_default_value(), USE_PERCENTAGE = qgisprocess::qgis_default_value(), OUTPUT_DIRECTORY = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("qgis:hypsometriccurves")
  output <- qgisprocess::qgis_run_algorithm("qgis:hypsometriccurves",`INPUT_DEM` = INPUT_DEM, `BOUNDARY_LAYER` = BOUNDARY_LAYER, `STEP` = STEP, `USE_PERCENTAGE` = USE_PERCENTAGE, `OUTPUT_DIRECTORY` = OUTPUT_DIRECTORY,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT_DIRECTORY")
  }
}