##' QGIS Algorithm provided by SAGA Top of atmosphere reflectance (saga:topofatmospherereflectance)
##'
##' @title QGIS algorithm Top of atmosphere reflectance
##'
##' @param DN_MSS01 `raster` - DN Band 1. Path to a raster layer.
##' @param DN_MSS02 `raster` - DN Band 2. Path to a raster layer.
##' @param DN_MSS03 `raster` - DN Band 3. Path to a raster layer.
##' @param DN_MSS04 `raster` - DN Band 4. Path to a raster layer.
##' @param RF_MSS01 `rasterDestination` - Reflectance Band 1. Path for new raster layer.
##' @param RF_MSS02 `rasterDestination` - Reflectance Band 2. Path for new raster layer.
##' @param RF_MSS03 `rasterDestination` - Reflectance Band 3. Path for new raster layer.
##' @param RF_MSS04 `rasterDestination` - Reflectance Band 4. Path for new raster layer.
##' @param DN_ETM01 `raster` - DN Band 1. Path to a raster layer.
##' @param DN_ETM02 `raster` - DN Band 2. Path to a raster layer.
##' @param DN_ETM03 `raster` - DN Band 3. Path to a raster layer.
##' @param DN_ETM04 `raster` - DN Band 4. Path to a raster layer.
##' @param DN_ETM05 `raster` - DN Band 5. Path to a raster layer.
##' @param DN_ETM07 `raster` - DN Band 7. Path to a raster layer.
##' @param RF_ETM01 `rasterDestination` - Reflectance Band 1. Path for new raster layer.
##' @param RF_ETM02 `rasterDestination` - Reflectance Band 2. Path for new raster layer.
##' @param RF_ETM03 `rasterDestination` - Reflectance Band 3. Path for new raster layer.
##' @param RF_ETM04 `rasterDestination` - Reflectance Band 4. Path for new raster layer.
##' @param RF_ETM05 `rasterDestination` - Reflectance Band 5. Path for new raster layer.
##' @param RF_ETM07 `rasterDestination` - Reflectance Band 7. Path for new raster layer.
##' @param DN_OLI01 `raster` - DN Band 1. Path to a raster layer.
##' @param DN_OLI02 `raster` - DN Band 2. Path to a raster layer.
##' @param DN_OLI03 `raster` - DN Band 3. Path to a raster layer.
##' @param DN_OLI04 `raster` - DN Band 4. Path to a raster layer.
##' @param DN_OLI05 `raster` - DN Band 5. Path to a raster layer.
##' @param DN_OLI06 `raster` - DN Band 6. Path to a raster layer.
##' @param DN_OLI07 `raster` - DN Band 7. Path to a raster layer.
##' @param DN_OLI09 `raster` - DN Band 9. Path to a raster layer.
##' @param RF_OLI01 `rasterDestination` - Reflectance Band 1. Path for new raster layer.
##' @param RF_OLI02 `rasterDestination` - Reflectance Band 2. Path for new raster layer.
##' @param RF_OLI03 `rasterDestination` - Reflectance Band 3. Path for new raster layer.
##' @param RF_OLI04 `rasterDestination` - Reflectance Band 4. Path for new raster layer.
##' @param RF_OLI05 `rasterDestination` - Reflectance Band 5. Path for new raster layer.
##' @param RF_OLI06 `rasterDestination` - Reflectance Band 6. Path for new raster layer.
##' @param RF_OLI07 `rasterDestination` - Reflectance Band 7. Path for new raster layer.
##' @param RF_OLI09 `rasterDestination` - Reflectance Band 9. Path for new raster layer.
##' @param DN__TM06 `raster` - DN Band 6. Path to a raster layer.
##' @param RF__TM06 `rasterDestination` - Reflectance Band 6. Path for new raster layer.
##' @param DN_ETM61 `raster` - DN Band 61. Path to a raster layer.
##' @param DN_ETM62 `raster` - DN Band 62. Path to a raster layer.
##' @param RF_ETM61 `rasterDestination` - Reflectance Band 61. Path for new raster layer.
##' @param RF_ETM62 `rasterDestination` - Reflectance Band 62. Path for new raster layer.
##' @param DN_OLI10 `raster` - DN Band 10. Path to a raster layer.
##' @param DN_OLI11 `raster` - DN Band 11. Path to a raster layer.
##' @param RF_OLI10 `rasterDestination` - Reflectance Band 10. Path for new raster layer.
##' @param RF_OLI11 `rasterDestination` - Reflectance Band 11. Path for new raster layer.
##' @param DN_PAN08 `raster` - DN Band 8. Path to a raster layer.
##' @param RF_PAN08 `rasterDestination` - Reflectance Band 8. Path for new raster layer.
##' @param METAFILE `file` - Metadata File. Path to a file.
##' @param SENSOR `enum`  of `("[0] Landsat-1 MSS", "[1] Landsat-2 MSS", "[2] Landsat-3 MSS", "[3] Landsat-4 MSS", "[4] Landsat-5 MSS", "[5] Landsat-4 TM", "[6] Landsat-5 TM", "[7] Landsat-7 ETM+", "[8] Landsat-8 OLI/TIRS")` - Spacecraft Sensor. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DATE_ACQU `string` - Image Acquisition Date. String value.
##' @param DATE_PROD `string` - Image Creation Date. String value.
##' @param SUN_HGT `number` - Suns's Height. A numeric value.
##' @param AS_RAD `boolean` - At-Sensor Radiance. 1 for true/yes. 0 for false/no.
##' @param AC_METHOD `enum`  of `("[0] uncorrected", "[1] corrected", "[2] dark object subtraction 1", "[3] dark object subtraction 2", "[4] dark object subtraction 2b", "[5] dark object subtraction 3", "[6] dark object subtraction 4")` - Atmospheric Correction. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param AC_DO_CELLS `number` - Minimum Number of Dark Object Cells. A numeric value.
##' @param AC_RAYLEIGH `number` - Rayleigh Scattering. A numeric value.
##' @param AC_SUN_RAD `number` - Solar Radiance. A numeric value.
##' @param ETM_GAIN_10 `enum`  of `("[0] low", "[1] high")` - Band 1. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ETM_GAIN_20 `enum`  of `("[0] low", "[1] high")` - Band 2. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ETM_GAIN_30 `enum`  of `("[0] low", "[1] high")` - Band 3. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ETM_GAIN_40 `enum`  of `("[0] low", "[1] high")` - Band 4. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ETM_GAIN_50 `enum`  of `("[0] low", "[1] high")` - Band 5. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ETM_GAIN_61 `enum`  of `("[0] low", "[1] high")` - Band 61. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ETM_GAIN_62 `enum`  of `("[0] low", "[1] high")` - Band 62. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ETM_GAIN_70 `enum`  of `("[0] low", "[1] high")` - Band 7. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ETM_GAIN_80 `enum`  of `("[0] low", "[1] high")` - Band 8. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RF_MSS01 - outputRaster - Reflectance Band 1
##' * RF_MSS02 - outputRaster - Reflectance Band 2
##' * RF_MSS03 - outputRaster - Reflectance Band 3
##' * RF_MSS04 - outputRaster - Reflectance Band 4
##' * RF_ETM01 - outputRaster - Reflectance Band 1
##' * RF_ETM02 - outputRaster - Reflectance Band 2
##' * RF_ETM03 - outputRaster - Reflectance Band 3
##' * RF_ETM04 - outputRaster - Reflectance Band 4
##' * RF_ETM05 - outputRaster - Reflectance Band 5
##' * RF_ETM07 - outputRaster - Reflectance Band 7
##' * RF_OLI01 - outputRaster - Reflectance Band 1
##' * RF_OLI02 - outputRaster - Reflectance Band 2
##' * RF_OLI03 - outputRaster - Reflectance Band 3
##' * RF_OLI04 - outputRaster - Reflectance Band 4
##' * RF_OLI05 - outputRaster - Reflectance Band 5
##' * RF_OLI06 - outputRaster - Reflectance Band 6
##' * RF_OLI07 - outputRaster - Reflectance Band 7
##' * RF_OLI09 - outputRaster - Reflectance Band 9
##' * RF__TM06 - outputRaster - Reflectance Band 6
##' * RF_ETM61 - outputRaster - Reflectance Band 61
##' * RF_ETM62 - outputRaster - Reflectance Band 62
##' * RF_OLI10 - outputRaster - Reflectance Band 10
##' * RF_OLI11 - outputRaster - Reflectance Band 11
##' * RF_PAN08 - outputRaster - Reflectance Band 8
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_topofatmospherereflectance <- function(DN_MSS01 = qgisprocess::qgis_default_value(), DN_MSS02 = qgisprocess::qgis_default_value(), DN_MSS03 = qgisprocess::qgis_default_value(), DN_MSS04 = qgisprocess::qgis_default_value(), RF_MSS01 = qgisprocess::qgis_default_value(), RF_MSS02 = qgisprocess::qgis_default_value(), RF_MSS03 = qgisprocess::qgis_default_value(), RF_MSS04 = qgisprocess::qgis_default_value(), DN_ETM01 = qgisprocess::qgis_default_value(), DN_ETM02 = qgisprocess::qgis_default_value(), DN_ETM03 = qgisprocess::qgis_default_value(), DN_ETM04 = qgisprocess::qgis_default_value(), DN_ETM05 = qgisprocess::qgis_default_value(), DN_ETM07 = qgisprocess::qgis_default_value(), RF_ETM01 = qgisprocess::qgis_default_value(), RF_ETM02 = qgisprocess::qgis_default_value(), RF_ETM03 = qgisprocess::qgis_default_value(), RF_ETM04 = qgisprocess::qgis_default_value(), RF_ETM05 = qgisprocess::qgis_default_value(), RF_ETM07 = qgisprocess::qgis_default_value(), DN_OLI01 = qgisprocess::qgis_default_value(), DN_OLI02 = qgisprocess::qgis_default_value(), DN_OLI03 = qgisprocess::qgis_default_value(), DN_OLI04 = qgisprocess::qgis_default_value(), DN_OLI05 = qgisprocess::qgis_default_value(), DN_OLI06 = qgisprocess::qgis_default_value(), DN_OLI07 = qgisprocess::qgis_default_value(), DN_OLI09 = qgisprocess::qgis_default_value(), RF_OLI01 = qgisprocess::qgis_default_value(), RF_OLI02 = qgisprocess::qgis_default_value(), RF_OLI03 = qgisprocess::qgis_default_value(), RF_OLI04 = qgisprocess::qgis_default_value(), RF_OLI05 = qgisprocess::qgis_default_value(), RF_OLI06 = qgisprocess::qgis_default_value(), RF_OLI07 = qgisprocess::qgis_default_value(), RF_OLI09 = qgisprocess::qgis_default_value(), DN__TM06 = qgisprocess::qgis_default_value(), RF__TM06 = qgisprocess::qgis_default_value(), DN_ETM61 = qgisprocess::qgis_default_value(), DN_ETM62 = qgisprocess::qgis_default_value(), RF_ETM61 = qgisprocess::qgis_default_value(), RF_ETM62 = qgisprocess::qgis_default_value(), DN_OLI10 = qgisprocess::qgis_default_value(), DN_OLI11 = qgisprocess::qgis_default_value(), RF_OLI10 = qgisprocess::qgis_default_value(), RF_OLI11 = qgisprocess::qgis_default_value(), DN_PAN08 = qgisprocess::qgis_default_value(), RF_PAN08 = qgisprocess::qgis_default_value(), METAFILE = qgisprocess::qgis_default_value(), SENSOR = qgisprocess::qgis_default_value(), DATE_ACQU = qgisprocess::qgis_default_value(), DATE_PROD = qgisprocess::qgis_default_value(), SUN_HGT = qgisprocess::qgis_default_value(), AS_RAD = qgisprocess::qgis_default_value(), AC_METHOD = qgisprocess::qgis_default_value(), AC_DO_CELLS = qgisprocess::qgis_default_value(), AC_RAYLEIGH = qgisprocess::qgis_default_value(), AC_SUN_RAD = qgisprocess::qgis_default_value(), ETM_GAIN_10 = qgisprocess::qgis_default_value(), ETM_GAIN_20 = qgisprocess::qgis_default_value(), ETM_GAIN_30 = qgisprocess::qgis_default_value(), ETM_GAIN_40 = qgisprocess::qgis_default_value(), ETM_GAIN_50 = qgisprocess::qgis_default_value(), ETM_GAIN_61 = qgisprocess::qgis_default_value(), ETM_GAIN_62 = qgisprocess::qgis_default_value(), ETM_GAIN_70 = qgisprocess::qgis_default_value(), ETM_GAIN_80 = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:topofatmospherereflectance",`DN_MSS01` = DN_MSS01, `DN_MSS02` = DN_MSS02, `DN_MSS03` = DN_MSS03, `DN_MSS04` = DN_MSS04, `RF_MSS01` = RF_MSS01, `RF_MSS02` = RF_MSS02, `RF_MSS03` = RF_MSS03, `RF_MSS04` = RF_MSS04, `DN_ETM01` = DN_ETM01, `DN_ETM02` = DN_ETM02, `DN_ETM03` = DN_ETM03, `DN_ETM04` = DN_ETM04, `DN_ETM05` = DN_ETM05, `DN_ETM07` = DN_ETM07, `RF_ETM01` = RF_ETM01, `RF_ETM02` = RF_ETM02, `RF_ETM03` = RF_ETM03, `RF_ETM04` = RF_ETM04, `RF_ETM05` = RF_ETM05, `RF_ETM07` = RF_ETM07, `DN_OLI01` = DN_OLI01, `DN_OLI02` = DN_OLI02, `DN_OLI03` = DN_OLI03, `DN_OLI04` = DN_OLI04, `DN_OLI05` = DN_OLI05, `DN_OLI06` = DN_OLI06, `DN_OLI07` = DN_OLI07, `DN_OLI09` = DN_OLI09, `RF_OLI01` = RF_OLI01, `RF_OLI02` = RF_OLI02, `RF_OLI03` = RF_OLI03, `RF_OLI04` = RF_OLI04, `RF_OLI05` = RF_OLI05, `RF_OLI06` = RF_OLI06, `RF_OLI07` = RF_OLI07, `RF_OLI09` = RF_OLI09, `DN__TM06` = DN__TM06, `RF__TM06` = RF__TM06, `DN_ETM61` = DN_ETM61, `DN_ETM62` = DN_ETM62, `RF_ETM61` = RF_ETM61, `RF_ETM62` = RF_ETM62, `DN_OLI10` = DN_OLI10, `DN_OLI11` = DN_OLI11, `RF_OLI10` = RF_OLI10, `RF_OLI11` = RF_OLI11, `DN_PAN08` = DN_PAN08, `RF_PAN08` = RF_PAN08, `METAFILE` = METAFILE, `SENSOR` = SENSOR, `DATE_ACQU` = DATE_ACQU, `DATE_PROD` = DATE_PROD, `SUN_HGT` = SUN_HGT, `AS_RAD` = AS_RAD, `AC_METHOD` = AC_METHOD, `AC_DO_CELLS` = AC_DO_CELLS, `AC_RAYLEIGH` = AC_RAYLEIGH, `AC_SUN_RAD` = AC_SUN_RAD, `ETM_GAIN_10` = ETM_GAIN_10, `ETM_GAIN_20` = ETM_GAIN_20, `ETM_GAIN_30` = ETM_GAIN_30, `ETM_GAIN_40` = ETM_GAIN_40, `ETM_GAIN_50` = ETM_GAIN_50, `ETM_GAIN_61` = ETM_GAIN_61, `ETM_GAIN_62` = ETM_GAIN_62, `ETM_GAIN_70` = ETM_GAIN_70, `ETM_GAIN_80` = ETM_GAIN_80,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RF_MSS01")
  }
}