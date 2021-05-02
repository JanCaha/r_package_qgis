##' QGIS Algorithm provided by GRASS v.kernel.rast (grass7:v.kernel.rast)
##'
##' @title QGIS algorithm v.kernel.rast
##'
##' @param input `source` - Name of input vector map with training points. Path to a vector layer.
##' @param radius `number` - Kernel radius in map units. A numeric value.
##' @param dsize `number` - Discretization error in map units. A numeric value.
##' @param segmax `number` - Maximum length of segment on network. A numeric value.
##' @param distmax `number` - Maximum distance from point to network. A numeric value.
##' @param multiplier `number` - Multiply the density result by this number. A numeric value.
##' @param node `enum`  of `("none", "split")` - Node method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param kernel `enum`  of `("uniform", "triangular", "epanechnikov", "quartic", "triweight", "gaussian", "cosine")` - Kernel function. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param .o `boolean` - Try to calculate an optimal radius with given 'radius' taken as maximum (experimental). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -o.
##' @param output `rasterDestination` - Kernel. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Kernel
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_kernel_rast <- function(input = qgisprocess::qgis_default_value(), radius = qgisprocess::qgis_default_value(), dsize = qgisprocess::qgis_default_value(), segmax = qgisprocess::qgis_default_value(), distmax = qgisprocess::qgis_default_value(), multiplier = qgisprocess::qgis_default_value(), node = qgisprocess::qgis_default_value(), kernel = qgisprocess::qgis_default_value(), .o = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:v.kernel.rast")
  output <- qgisprocess::qgis_run_algorithm("grass7:v.kernel.rast",`input` = input, `radius` = radius, `dsize` = dsize, `segmax` = segmax, `distmax` = distmax, `multiplier` = multiplier, `node` = node, `kernel` = kernel, `-o` = .o, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}