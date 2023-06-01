##' QGIS Algorithm provided by GRASS r.geomorphon (grass7:r.geomorphon)
##'
##' @title QGIS algorithm r.geomorphon
##'
##' @param elevation `raster` - Name of input elevation raster map. Path to a raster layer.
##' @param search `number` - Outer search radius. A numeric value.
##' @param skip `number` - Inner search radius. A numeric value.
##' @param flat `number` - Flatness threshold (degrees). A numeric value.
##' @param dist `number` - Flatness distance, zero for none. A numeric value.
##' @param forms `rasterDestination` - Most common geomorphic forms. Path for new raster layer.
##' @param .m `boolean` - Use meters to define search units (default is cells). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -m.
##' @param .e `boolean` - Use extended form correction. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -e.
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
##' * forms - outputRaster - Most common geomorphic forms
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass7_r_geomorphon <- function(elevation = qgisprocess:::qgis_default_value(), search = qgisprocess:::qgis_default_value(), skip = qgisprocess:::qgis_default_value(), flat = qgisprocess:::qgis_default_value(), dist = qgisprocess:::qgis_default_value(), forms = qgisprocess:::qgis_default_value(), .m = qgisprocess:::qgis_default_value(), .e = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:r.geomorphon")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:r.geomorphon", `elevation` = elevation, `search` = search, `skip` = skip, `flat` = flat, `dist` = dist, `forms` = forms, `-m` = .m, `-e` = .e, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:r.geomorphon", `elevation` = elevation, `search` = search, `skip` = skip, `flat` = flat, `dist` = dist, `forms` = forms, `-m` = .m, `-e` = .e, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "forms")
  }
}