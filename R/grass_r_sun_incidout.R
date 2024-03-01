##' QGIS Algorithm provided by GRASS r.sun.incidout (grass:r.sun.incidout). r.sun.incidout - Solar irradiance and irradiation model ( for the set local time).
##'
##' @title QGIS algorithm - r.sun.incidout
##'
##' @param elevation `raster` - Elevation layer (meters). Path to a raster layer.
##' @param aspect `raster` - Aspect layer (decimal degrees). Path to a raster layer.
##' @param aspect_value `number` - A single value of the orientation (aspect), 270 is south. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param slope `raster` - Name of the input slope raster map (terrain slope or solar panel inclination) (decimal degrees). Path to a raster layer.
##' @param slope_value `number` - A single value of inclination (slope). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param linke `raster` - Name of the Linke atmospheric turbidity coefficient input raster map. Path to a raster layer.
##' @param albedo `raster` - Name of the ground albedo coefficient input raster map. Path to a raster layer.
##' @param albedo_value `number` - A single value of the ground albedo coefficient. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param lat `raster` - Name of input raster map containing latitudes (decimal degrees). Path to a raster layer.
##' @param long `raster` - Name of input raster map containing longitudes (decimal degrees). Path to a raster layer.
##' @param coeff_bh `raster` - Name of real-sky beam radiation coefficient input raster map. Path to a raster layer.
##' @param coeff_dh `raster` - Name of real-sky diffuse radiation coefficient input raster map. Path to a raster layer.
##' @param horizon_basemap `raster` - The horizon information input map basename. Path to a raster layer.
##' @param horizon_step `number` - Angle step size for multidirectional horizon (degrees). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param day `number` - No. of day of the year (1-365). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param step `number` - Time step when computing all-day radiation sums (decimal hours). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param declination `number` - Declination value (overriding the internally computed value) (radians). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param distance_step `number` - Sampling distance step coefficient (0.5-1.5). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param npartitions `number` - Read the input files in this number of chunks. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param civil_time `number` - Civil time zone value, if none, the time will be local solar time. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param time `number` - Local (solar) time (decimal hours). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param .p `boolean` - Do not incorporate the shadowing effect of terrain. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -p.
##' @param .m `boolean` - Use the low-memory version of the program. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -m.
##' @param incidout `rasterDestination` - incidence angle raster map. Path for new raster layer.
##' @param beam_rad `rasterDestination` - Beam irradiance (W.m-2). Path for new raster layer.
##' @param diff_rad `rasterDestination` - Diffuse irradiance (W.m-2). Path for new raster layer.
##' @param refl_rad `rasterDestination` - Ground reflected irradiance (W.m-2). Path for new raster layer.
##' @param glob_rad `rasterDestination` - Global (total) irradiance\code{/}irradiation (W.m-2). Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * beam_rad - outputRaster - Beam irradiance (W.m-2)
##' * diff_rad - outputRaster - Diffuse irradiance (W.m-2)
##' * glob_rad - outputRaster - Global (total) irradiance\code{/}irradiation (W.m-2)
##' * incidout - outputRaster - incidence angle raster map
##' * refl_rad - outputRaster - Ground reflected irradiance (W.m-2)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_r_sun_incidout <- function(elevation = qgisprocess:::qgis_default_value(), aspect = qgisprocess:::qgis_default_value(), aspect_value = qgisprocess:::qgis_default_value(), slope = qgisprocess:::qgis_default_value(), slope_value = qgisprocess:::qgis_default_value(), linke = qgisprocess:::qgis_default_value(), albedo = qgisprocess:::qgis_default_value(), albedo_value = qgisprocess:::qgis_default_value(), lat = qgisprocess:::qgis_default_value(), long = qgisprocess:::qgis_default_value(), coeff_bh = qgisprocess:::qgis_default_value(), coeff_dh = qgisprocess:::qgis_default_value(), horizon_basemap = qgisprocess:::qgis_default_value(), horizon_step = qgisprocess:::qgis_default_value(), day = qgisprocess:::qgis_default_value(), step = qgisprocess:::qgis_default_value(), declination = qgisprocess:::qgis_default_value(), distance_step = qgisprocess:::qgis_default_value(), npartitions = qgisprocess:::qgis_default_value(), civil_time = qgisprocess:::qgis_default_value(), time = qgisprocess:::qgis_default_value(), .p = qgisprocess:::qgis_default_value(), .m = qgisprocess:::qgis_default_value(), incidout = qgisprocess:::qgis_default_value(), beam_rad = qgisprocess:::qgis_default_value(), diff_rad = qgisprocess:::qgis_default_value(), refl_rad = qgisprocess:::qgis_default_value(), glob_rad = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:r.sun.incidout")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:r.sun.incidout", `elevation` = elevation, `aspect` = aspect, `aspect_value` = aspect_value, `slope` = slope, `slope_value` = slope_value, `linke` = linke, `albedo` = albedo, `albedo_value` = albedo_value, `lat` = lat, `long` = long, `coeff_bh` = coeff_bh, `coeff_dh` = coeff_dh, `horizon_basemap` = horizon_basemap, `horizon_step` = horizon_step, `day` = day, `step` = step, `declination` = declination, `distance_step` = distance_step, `npartitions` = npartitions, `civil_time` = civil_time, `time` = time, `-p` = .p, `-m` = .m, `incidout` = incidout, `beam_rad` = beam_rad, `diff_rad` = diff_rad, `refl_rad` = refl_rad, `glob_rad` = glob_rad, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:r.sun.incidout", `elevation` = elevation, `aspect` = aspect, `aspect_value` = aspect_value, `slope` = slope, `slope_value` = slope_value, `linke` = linke, `albedo` = albedo, `albedo_value` = albedo_value, `lat` = lat, `long` = long, `coeff_bh` = coeff_bh, `coeff_dh` = coeff_dh, `horizon_basemap` = horizon_basemap, `horizon_step` = horizon_step, `day` = day, `step` = step, `declination` = declination, `distance_step` = distance_step, `npartitions` = npartitions, `civil_time` = civil_time, `time` = time, `-p` = .p, `-m` = .m, `incidout` = incidout, `beam_rad` = beam_rad, `diff_rad` = diff_rad, `refl_rad` = refl_rad, `glob_rad` = glob_rad, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "beam_rad")
  }
}