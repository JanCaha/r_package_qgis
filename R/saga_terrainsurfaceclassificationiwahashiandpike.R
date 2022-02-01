##' QGIS Algorithm provided by SAGA Terrain surface classification (iwahashi and pike) (saga:terrainsurfaceclassificationiwahashiandpike)
##'
##' @title QGIS algorithm Terrain surface classification (iwahashi and pike)
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param SLOPE `raster` - Slope. Path to a raster layer.
##' @param CONVEXITY `raster` - Convexity. Path to a raster layer.
##' @param CONV_RECALC `boolean` - Recalculate. 1 for true/yes. 0 for false/no.
##' @param TEXTURE `raster` - Texture. Path to a raster layer.
##' @param TEXT_RECALC `boolean` - Recalculate. 1 for true/yes. 0 for false/no.
##' @param LANDFORMS `rasterDestination` - Landforms. Path for new raster layer.
##' @param TYPE `enum`  of `("[0] 8", "[1] 12", "[2] 16")` - Number of Classes. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CONV_SCALE `number` - Scale (Cells). A numeric value.
##' @param CONV_KERNEL `enum`  of `("[0] four-neighbourhood", "[1] eight-neihbourhood", "[2] eight-neihbourhood (distance based weighting)")` - Laplacian Filter Kernel. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CONV_TYPE `enum`  of `("[0] convexity", "[1] concavity")` - Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CONV_EPSILON `number` - Flat Area Threshold. A numeric value.
##' @param TEXT_SCALE `number` - Scale (Cells). A numeric value.
##' @param TEXT_EPSILON `number` - Flat Area Threshold. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * LANDFORMS - outputRaster - Landforms
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_terrainsurfaceclassificationiwahashiandpike <- function(DEM = qgisprocess::qgis_default_value(), SLOPE = qgisprocess::qgis_default_value(), CONVEXITY = qgisprocess::qgis_default_value(), CONV_RECALC = qgisprocess::qgis_default_value(), TEXTURE = qgisprocess::qgis_default_value(), TEXT_RECALC = qgisprocess::qgis_default_value(), LANDFORMS = qgisprocess::qgis_default_value(), TYPE = qgisprocess::qgis_default_value(), CONV_SCALE = qgisprocess::qgis_default_value(), CONV_KERNEL = qgisprocess::qgis_default_value(), CONV_TYPE = qgisprocess::qgis_default_value(), CONV_EPSILON = qgisprocess::qgis_default_value(), TEXT_SCALE = qgisprocess::qgis_default_value(), TEXT_EPSILON = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:terrainsurfaceclassificationiwahashiandpike")

  output <- qgisprocess::qgis_run_algorithm("saga:terrainsurfaceclassificationiwahashiandpike", `DEM` = DEM, `SLOPE` = SLOPE, `CONVEXITY` = CONVEXITY, `CONV_RECALC` = CONV_RECALC, `TEXTURE` = TEXTURE, `TEXT_RECALC` = TEXT_RECALC, `LANDFORMS` = LANDFORMS, `TYPE` = TYPE, `CONV_SCALE` = CONV_SCALE, `CONV_KERNEL` = CONV_KERNEL, `CONV_TYPE` = CONV_TYPE, `CONV_EPSILON` = CONV_EPSILON, `TEXT_SCALE` = TEXT_SCALE, `TEXT_EPSILON` = TEXT_EPSILON,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "LANDFORMS")
  }
}