##' QGIS Algorithm provided by GRASS r.sim.water (grass7:r.sim.water)
##'
##' @title QGIS algorithm r.sim.water
##'
##' @param elevation `raster` - Name of the elevation raster map (m). Path to a raster layer.
##' @param dx `raster` - Name of the x-derivatives raster map (m/m). Path to a raster layer.
##' @param dy `raster` - Name of the y-derivatives raster map (m/m). Path to a raster layer.
##' @param rain `raster` - Name of the rainfall excess rate (rain-infilt) raster map (mm/hr). Path to a raster layer.
##' @param rain_value `number` - Rainfall excess rate unique value (mm/hr). A numeric value.
##' @param infil `raster` - Name of the runoff infiltration rate raster map (mm/hr). Path to a raster layer.
##' @param infil_value `number` - Runoff infiltration rate unique value (mm/hr). A numeric value.
##' @param man `raster` - Name of the Mannings n raster map. Path to a raster layer.
##' @param man_value `number` - Manning's n unique value. A numeric value.
##' @param flow_control `raster` - Name of the flow controls raster map (permeability ratio 0-1). Path to a raster layer.
##' @param observation `source` - Sampling locations vector points. Path to a vector layer.
##' @param nwalkers `number` - Number of walkers, default is twice the number of cells. A numeric value.
##' @param niterations `number` - Time used for iterations (minutes). A numeric value.
##' @param output_step `number` - Time interval for creating output maps (minutes). A numeric value.
##' @param diffusion_coeff `number` - Water diffusion constant. A numeric value.
##' @param hmax `number` - Threshold water depth (m). A numeric value.
##' @param halpha `number` - Diffusion increase constant. A numeric value.
##' @param hbeta `number` - Weighting factor for water flow velocity vector. A numeric value.
##' @param .t `boolean` - Time-series output. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -t.
##' @param depth `rasterDestination` - Water depth (m). Path for new raster layer.
##' @param discharge `rasterDestination` - Water discharge (m3/s). Path for new raster layer.
##' @param error `rasterDestination` - Simulation error (m). Path for new raster layer.
##' @param walkers_output `vectorDestination` - Name of the output walkers vector points layer. Path for new vector layer.
##' @param logfile `fileDestination` - Name for sampling points output text file.. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value.
##' @param GRASS_OUTPUT_TYPE_PARAMETER `enum`  of `("auto", "point", "line", "area")` - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRASS_VECTOR_DSCO `string` - v.out.ogr output data source options (dsco). String value.
##' @param GRASS_VECTOR_LCO `string` - v.out.ogr output layer options (lco). String value.
##' @param GRASS_VECTOR_EXPORT_NOCAT `boolean` - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * depth - outputRaster - Water depth (m)
##' * discharge - outputRaster - Water discharge (m3/s)
##' * error - outputRaster - Simulation error (m)
##' * logfile - outputFile - Name for sampling points output text file.
##' * walkers_output - outputVector - Name of the output walkers vector points layer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_sim_water <- function(elevation = qgisprocess::qgis_default_value(), dx = qgisprocess::qgis_default_value(), dy = qgisprocess::qgis_default_value(), rain = qgisprocess::qgis_default_value(), rain_value = qgisprocess::qgis_default_value(), infil = qgisprocess::qgis_default_value(), infil_value = qgisprocess::qgis_default_value(), man = qgisprocess::qgis_default_value(), man_value = qgisprocess::qgis_default_value(), flow_control = qgisprocess::qgis_default_value(), observation = qgisprocess::qgis_default_value(), nwalkers = qgisprocess::qgis_default_value(), niterations = qgisprocess::qgis_default_value(), output_step = qgisprocess::qgis_default_value(), diffusion_coeff = qgisprocess::qgis_default_value(), hmax = qgisprocess::qgis_default_value(), halpha = qgisprocess::qgis_default_value(), hbeta = qgisprocess::qgis_default_value(), .t = qgisprocess::qgis_default_value(), depth = qgisprocess::qgis_default_value(), discharge = qgisprocess::qgis_default_value(), error = qgisprocess::qgis_default_value(), walkers_output = qgisprocess::qgis_default_value(), logfile = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:r.sim.water")

  output <- qgisprocess::qgis_run_algorithm("grass7:r.sim.water", `elevation` = elevation, `dx` = dx, `dy` = dy, `rain` = rain, `rain_value` = rain_value, `infil` = infil, `infil_value` = infil_value, `man` = man, `man_value` = man_value, `flow_control` = flow_control, `observation` = observation, `nwalkers` = nwalkers, `niterations` = niterations, `output_step` = output_step, `diffusion_coeff` = diffusion_coeff, `hmax` = hmax, `halpha` = halpha, `hbeta` = hbeta, `-t` = .t, `depth` = depth, `discharge` = discharge, `error` = error, `walkers_output` = walkers_output, `logfile` = logfile, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "depth")
  }
}