##' QGIS Algorithm provided by SAGA Terrain surface convexity (saga:terrainsurfaceconvexity)
##'
##' @title QGIS algorithm Terrain surface convexity
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param CONVEXITY `rasterDestination` - Convexity. Path for new raster layer.
##' @param KERNEL `enum`  of `("[0] conventional four-neighbourhood", "[1] conventional eight-neihbourhood", "[2] eight-neihbourhood (distance based weighting)")` - Laplacian Filter Kernel. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TYPE `enum`  of `("[0] convexity", "[1] concavity")` - Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param EPSILON `number` - Flat Area Threshold. A numeric value.
##' @param SCALE `number` - Scale (Cells). A numeric value.
##' @param METHOD `enum`  of `("[0] counting cells", "[1] resampling")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DW_WEIGHTING `enum`  of `("[0] no distance weighting", "[1] inverse distance to a power", "[2] exponential", "[3] gaussian weighting")` - Weighting Function. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DW_IDW_POWER `number` - Inverse Distance Weighting Power. A numeric value.
##' @param DW_IDW_OFFSET `boolean` - Inverse Distance Offset. 1 for true/yes. 0 for false/no.
##' @param DW_BANDWIDTH `number` - Gaussian and Exponential Weighting Bandwidth. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * CONVEXITY - outputRaster - Convexity
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_terrainsurfaceconvexity <- function(DEM = qgisprocess::qgis_default_value(), CONVEXITY = qgisprocess::qgis_default_value(), KERNEL = qgisprocess::qgis_default_value(), TYPE = qgisprocess::qgis_default_value(), EPSILON = qgisprocess::qgis_default_value(), SCALE = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), DW_WEIGHTING = qgisprocess::qgis_default_value(), DW_IDW_POWER = qgisprocess::qgis_default_value(), DW_IDW_OFFSET = qgisprocess::qgis_default_value(), DW_BANDWIDTH = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:terrainsurfaceconvexity")

  output <- qgisprocess::qgis_run_algorithm("saga:terrainsurfaceconvexity", `DEM` = DEM, `CONVEXITY` = CONVEXITY, `KERNEL` = KERNEL, `TYPE` = TYPE, `EPSILON` = EPSILON, `SCALE` = SCALE, `METHOD` = METHOD, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_IDW_OFFSET` = DW_IDW_OFFSET, `DW_BANDWIDTH` = DW_BANDWIDTH,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CONVEXITY")
  }
}