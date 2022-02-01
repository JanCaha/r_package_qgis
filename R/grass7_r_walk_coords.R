##' QGIS Algorithm provided by GRASS r.walk.coords (grass7:r.walk.coords)
##'
##' @title QGIS algorithm r.walk.coords
##'
##' @param elevation `raster` - Name of input elevation raster map. Path to a raster layer.
##' @param friction `raster` - Name of input raster map containing friction costs. Path to a raster layer.
##' @param start_coordinates `string` - Coordinates of starting point(s) (a list of E,N). String value.
##' @param stop_coordinates `string` - Coordinates of stopping point(s) (a list of E,N). String value.
##' @param walk_coeff `string` - Coefficients for walking energy formula parameters a,b,c,d. String value.
##' @param lambda `number` - Lambda coefficients for combining walking energy and friction cost. A numeric value.
##' @param slope_factor `number` - Slope factor determines travel energy cost per height step. A numeric value.
##' @param max_cost `number` - Maximum cumulative cost. A numeric value.
##' @param null_cost `number` - Cost assigned to null cells. By default, null cells are excluded. A numeric value.
##' @param memory `number` - Maximum memory to be used in MB. A numeric value.
##' @param .k `boolean` - Use the 'Knight's move'; slower, but more accurate. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -k.
##' @param .n `boolean` - Keep null values in output raster layer. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -n.
##' @param output `rasterDestination` - Cumulative cost. Path for new raster layer.
##' @param outdir `rasterDestination` - Movement Directions. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Cumulative cost
##' * outdir - outputRaster - Movement Directions
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_walk_coords <- function(elevation = qgisprocess::qgis_default_value(), friction = qgisprocess::qgis_default_value(), start_coordinates = qgisprocess::qgis_default_value(), stop_coordinates = qgisprocess::qgis_default_value(), walk_coeff = qgisprocess::qgis_default_value(), lambda = qgisprocess::qgis_default_value(), slope_factor = qgisprocess::qgis_default_value(), max_cost = qgisprocess::qgis_default_value(), null_cost = qgisprocess::qgis_default_value(), memory = qgisprocess::qgis_default_value(), .k = qgisprocess::qgis_default_value(), .n = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), outdir = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:r.walk.coords")

  output <- qgisprocess::qgis_run_algorithm("grass7:r.walk.coords", `elevation` = elevation, `friction` = friction, `start_coordinates` = start_coordinates, `stop_coordinates` = stop_coordinates, `walk_coeff` = walk_coeff, `lambda` = lambda, `slope_factor` = slope_factor, `max_cost` = max_cost, `null_cost` = null_cost, `memory` = memory, `-k` = .k, `-n` = .n, `output` = output, `outdir` = outdir, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}