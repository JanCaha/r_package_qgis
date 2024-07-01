##' QGIS Algorithm provided by GRASS i.modis.qc (grass:i.modis.qc). Extracts quality control parameters from MODIS QC layers.
##'
##' @title QGIS algorithm - i.modis.qc
##'
##' @param input `raster` - Name of input surface reflectance QC layer (bit array). Path to a raster layer.
##' @param productname `enum`  of `("mod09Q1", "mod09A1", "mod09A1s", "mod09CMG", "mod09CMGs", "mod09CMGi", "mod11A1", "mod11A2", "mod13A2", "mcd43B2", "mcd43B2q", "mod13Q1")` - Name of MODIS product type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param qcname `enum`  of `("adjcorr", "atcorr", "cloud", "data_quality", "diff_orbit_from_500m", "modland_qa", "mandatory_qa_11A1", "data_quality_flag_11A1", "emis_error_11A1", "lst_error_11A1", "data_quality_flag_11A2", "emis_error_11A2", "mandatory_qa_11A2", "lst_error_11A2", "aerosol_quantity", "brdf_correction_performed", "cirrus_detected", "cloud_shadow", "cloud_state", "internal_cloud_algorithm", "internal_fire_algorithm", "internal_snow_mask", "land_water", "mod35_snow_ice", "pixel_adjacent_to_cloud", "icm_cloudy", "icm_clear", "icm_high_clouds", "icm_low_clouds", "icm_snow", "icm_fire", "icm_sun_glint", "icm_dust", "icm_cloud_shadow", "icm_pixel_is_adjacent_to_cloud", "icm_cirrus", "icm_pan_flag", "icm_criteria_for_aerosol_retrieval", "icm_aot_has_clim_val", "modland_qa", "vi_usefulness", "aerosol_quantity", "pixel_adjacent_to_cloud", "brdf_correction_performed", "mixed_clouds", "land_water", "possible_snow_ice", "possible_shadow", "platform", "land_water", "sun_z_angle_at_local_noon", "brdf_correction_performed")` - Name of QC type to extract. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param band `enum`  of `("1", "2", "3", "4", "5", "6", "7")` - Band number of MODIS product (mod09Q1=(1,2),mod09A1=(1-7),m(o\code{/}y)d09CMG=(1-7), mcd43B2q=(1-7)). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param output `rasterDestination` - QC Classification. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - QC Classification
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_i_modis_qc <- function(input = qgisprocess:::qgis_default_value(), productname = qgisprocess:::qgis_default_value(), qcname = qgisprocess:::qgis_default_value(), band = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:i.modis.qc")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:i.modis.qc", `input` = input, `productname` = productname, `qcname` = qcname, `band` = band, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:i.modis.qc", `input` = input, `productname` = productname, `qcname` = qcname, `band` = band, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output")
  }
}