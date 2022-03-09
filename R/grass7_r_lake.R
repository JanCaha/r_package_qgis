##' QGIS Algorithm provided by GRASS r.lake (grass7:r.lake)
##'
##' @title QGIS algorithm r.lake
##'
##' @param elevation `raster` - Elevation. Path to a raster layer.
##' @param water_level `number` - Water level. A numeric value.
##' @param coordinates `point` - Seed point coordinates. Point coordinate as an 'x,y' string, e.g. '1.5,10.1'.
##' @param seed `raster` - Raster layer with starting point(s) (at least 1 cell  0). Path to a raster layer.
##' @param .n `boolean` - Use negative depth values for lake raster layer. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -n.
##' @param lake `rasterDestination` - Lake. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * lake - outputRaster - Lake
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_lake <- function(elevation = qgisprocess::qgis_default_value(), water_level = qgisprocess::qgis_default_value(), coordinates = qgisprocess::qgis_default_value(), seed = qgisprocess::qgis_default_value(), .n = qgisprocess::qgis_default_value(), lake = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:r.lake")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:r.lake", `elevation` = elevation, `water_level` = water_level, `coordinates` = coordinates, `seed` = seed, `-n` = .n, `lake` = lake, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:r.lake", `elevation` = elevation, `water_level` = water_level, `coordinates` = coordinates, `seed` = seed, `-n` = .n, `lake` = lake, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "lake")
  }
}