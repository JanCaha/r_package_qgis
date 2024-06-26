##' QGIS Algorithm provided by GRASS r.sim.sediment (grass:r.sim.sediment). Sediment transport and erosion/deposition simulation using path sampling method (SIMWE).
##'
##' @title QGIS algorithm - r.sim.sediment
##'
##' @param elevation `raster` - Name of the elevation raster map (m). Path to a raster layer.
##' @param water_depth `raster` - Name of the water depth raster map (m). Path to a raster layer.
##' @param dx `raster` - Name of the x-derivatives raster map (m\code{/}m). Path to a raster layer.
##' @param dy `raster` - Name of the y-derivatives raster map (m\code{/}m). Path to a raster layer.
##' @param detachment_coeff `raster` - Name of the detachment capacity coefficient raster map (s\code{/}m). Path to a raster layer.
##' @param transport_coeff `raster` - Name of the transport capacity coefficient raster map (s). Path to a raster layer.
##' @param shear_stress `raster` - Name of the critical shear stress raster map (Pa). Path to a raster layer.
##' @param man `raster` - Name of the Mannings n raster map. Path to a raster layer.
##' @param man_value `number` - Name of the Mannings n value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param observation `source` - Sampling locations vector points. Path to a vector layer.
##' @param nwalkers `number` - Number of walkers. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param niterations `number` - Time used for iterations (minutes). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param output_step `number` - Time interval for creating output maps (minutes). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param diffusion_coeff `number` - Water diffusion constant. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param transport_capacity `rasterDestination` - Transport capacity (kg\code{/}ms). Path for new raster layer.
##' @param tlimit_erosion_deposition `rasterDestination` - Transport limited erosion-deposition (kg\code{/}m2s). Path for new raster layer.
##' @param sediment_concentration `rasterDestination` - Sediment concentration (particle\code{/}m3). Path for new raster layer.
##' @param sediment_flux `rasterDestination` - Sediment flux (kg\code{/}ms). Path for new raster layer.
##' @param erosion_deposition `rasterDestination` - Erosion-deposition (kg\code{/}m2s). Path for new raster layer.
##' @param walkers_output `vectorDestination` - Name of the output walkers vector points layer. Path for new vector layer.
##' @param logfile `fileDestination` - Name for sampling points output text file.. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_OUTPUT_TYPE_PARAMETER `enum`  of `("auto", "point", "line", "area")` - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRASS_VECTOR_DSCO `string` - v.out.ogr output data source options (dsco). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_VECTOR_LCO `string` - v.out.ogr output layer options (lco). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_VECTOR_EXPORT_NOCAT `boolean` - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * erosion_deposition - outputRaster - Erosion-deposition (kg\code{/}m2s)
##' * logfile - outputFile - Name for sampling points output text file.
##' * sediment_concentration - outputRaster - Sediment concentration (particle\code{/}m3)
##' * sediment_flux - outputRaster - Sediment flux (kg\code{/}ms)
##' * tlimit_erosion_deposition - outputRaster - Transport limited erosion-deposition (kg\code{/}m2s)
##' * transport_capacity - outputRaster - Transport capacity (kg\code{/}ms)
##' * walkers_output - outputVector - Name of the output walkers vector points layer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_r_sim_sediment <- function(elevation = qgisprocess:::qgis_default_value(), water_depth = qgisprocess:::qgis_default_value(), dx = qgisprocess:::qgis_default_value(), dy = qgisprocess:::qgis_default_value(), detachment_coeff = qgisprocess:::qgis_default_value(), transport_coeff = qgisprocess:::qgis_default_value(), shear_stress = qgisprocess:::qgis_default_value(), man = qgisprocess:::qgis_default_value(), man_value = qgisprocess:::qgis_default_value(), observation = qgisprocess:::qgis_default_value(), nwalkers = qgisprocess:::qgis_default_value(), niterations = qgisprocess:::qgis_default_value(), output_step = qgisprocess:::qgis_default_value(), diffusion_coeff = qgisprocess:::qgis_default_value(), transport_capacity = qgisprocess:::qgis_default_value(), tlimit_erosion_deposition = qgisprocess:::qgis_default_value(), sediment_concentration = qgisprocess:::qgis_default_value(), sediment_flux = qgisprocess:::qgis_default_value(), erosion_deposition = qgisprocess:::qgis_default_value(), walkers_output = qgisprocess:::qgis_default_value(), logfile = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess:::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess:::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:r.sim.sediment")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:r.sim.sediment", `elevation` = elevation, `water_depth` = water_depth, `dx` = dx, `dy` = dy, `detachment_coeff` = detachment_coeff, `transport_coeff` = transport_coeff, `shear_stress` = shear_stress, `man` = man, `man_value` = man_value, `observation` = observation, `nwalkers` = nwalkers, `niterations` = niterations, `output_step` = output_step, `diffusion_coeff` = diffusion_coeff, `transport_capacity` = transport_capacity, `tlimit_erosion_deposition` = tlimit_erosion_deposition, `sediment_concentration` = sediment_concentration, `sediment_flux` = sediment_flux, `erosion_deposition` = erosion_deposition, `walkers_output` = walkers_output, `logfile` = logfile, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:r.sim.sediment", `elevation` = elevation, `water_depth` = water_depth, `dx` = dx, `dy` = dy, `detachment_coeff` = detachment_coeff, `transport_coeff` = transport_coeff, `shear_stress` = shear_stress, `man` = man, `man_value` = man_value, `observation` = observation, `nwalkers` = nwalkers, `niterations` = niterations, `output_step` = output_step, `diffusion_coeff` = diffusion_coeff, `transport_capacity` = transport_capacity, `tlimit_erosion_deposition` = tlimit_erosion_deposition, `sediment_concentration` = sediment_concentration, `sediment_flux` = sediment_flux, `erosion_deposition` = erosion_deposition, `walkers_output` = walkers_output, `logfile` = logfile, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "erosion_deposition")
  }
}