##' QGIS Algorithm provided by GRASS i.eb.hsebal01.coords (grass7:i.eb.hsebal01.coords)
##'
##' @title QGIS algorithm i.eb.hsebal01.coords
##'
##' @param netradiation `raster` - Name of instantaneous net radiation raster map (W/m2). Path to a raster layer.
##' @param soilheatflux `raster` - Name of instantaneous soil heat flux raster map (W/m2). Path to a raster layer.
##' @param aerodynresistance `raster` - Name of aerodynamic resistance to heat momentum raster map (s/m). Path to a raster layer.
##' @param temperaturemeansealevel `raster` - Name of altitude corrected surface temperature raster map (K). Path to a raster layer.
##' @param frictionvelocitystar `number` - Value of the height independent friction velocity (u*) (m/s). A numeric value.
##' @param vapourpressureactual `raster` - Name of the actual vapour pressure (e_act) map (KPa). Path to a raster layer.
##' @param row_wet_pixel `number` - Row value of the wet pixel. A numeric value.
##' @param column_wet_pixel `number` - Column value of the wet pixel. A numeric value.
##' @param row_dry_pixel `number` - Row value of the dry pixel. A numeric value.
##' @param column_dry_pixel `number` - Column value of the dry pixel. A numeric value.
##' @param .a `boolean` - Automatic wet/dry pixel (careful!). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -a.
##' @param .c `boolean` - Dry/Wet pixels coordinates are in image projection, not row/col. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.
##' @param output `rasterDestination` - Sensible Heat Flux. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Sensible Heat Flux
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_i_eb_hsebal01_coords <- function(netradiation = qgisprocess::qgis_default_value(), soilheatflux = qgisprocess::qgis_default_value(), aerodynresistance = qgisprocess::qgis_default_value(), temperaturemeansealevel = qgisprocess::qgis_default_value(), frictionvelocitystar = qgisprocess::qgis_default_value(), vapourpressureactual = qgisprocess::qgis_default_value(), row_wet_pixel = qgisprocess::qgis_default_value(), column_wet_pixel = qgisprocess::qgis_default_value(), row_dry_pixel = qgisprocess::qgis_default_value(), column_dry_pixel = qgisprocess::qgis_default_value(), .a = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:i.eb.hsebal01.coords",`netradiation` = netradiation, `soilheatflux` = soilheatflux, `aerodynresistance` = aerodynresistance, `temperaturemeansealevel` = temperaturemeansealevel, `frictionvelocitystar` = frictionvelocitystar, `vapourpressureactual` = vapourpressureactual, `row_wet_pixel` = row_wet_pixel, `column_wet_pixel` = column_wet_pixel, `row_dry_pixel` = row_dry_pixel, `column_dry_pixel` = column_dry_pixel, `-a` = .a, `-c` = .c, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}