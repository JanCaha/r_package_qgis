##' QGIS Algorithm provided by SAGA Next Gen Tree growth season (sagang:treegrowthseason). ---------------- Arguments ----------------  T: Mean Temperature 	Argument type:	multilayer TMIN: Minimum Temperature 	Argument type:	multilayer TMAX: Maximum Temperature 	Argument type:	multilayer P: Precipitation 	Argument type:	multilayer SWC: Soil Water Capacity of Profile (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SWC_DEFAULT: Default 	Default value:	220 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SWC_SURFACE: Top Soil Water Capacity 	Default value:	30 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SW1_RESIST: Transpiration Resistance 	Default value:	0.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression LAT_DEF: Default Latitude 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SMT: Mean Temperature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SMP: Precipitation Sum 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer LGS: Length 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FIRST: First Growing Day 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer LAST: Last Growing Day 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TLH: Tree Line Height 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DT_MIN: Threshold Temperature 	Default value:	0.9 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SW_MIN: Minimum Soil Water Content (Percent) 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression LGS_MIN: Minimum Length 	Default value:	94 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SMT_MIN: Minimum Mean Temperature 	Default value:	6.4 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TLH_MAX_DIFF: Maximum Tree Line Height Difference 	Default value:	3000 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Tree growth season
##'
##' @param T `multilayer` - Mean Temperature. .
##' @param TMIN `multilayer` - Minimum Temperature. .
##' @param TMAX `multilayer` - Maximum Temperature. .
##' @param P `multilayer` - Precipitation. .
##' @param SWC `raster` - Soil Water Capacity of Profile. Path to a raster layer.
##' @param SWC_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SWC_SURFACE `number` - Top Soil Water Capacity. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SW1_RESIST `number` - Transpiration Resistance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param LAT_DEF `number` - Default Latitude. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SMT `rasterDestination` - Mean Temperature. Path for new raster layer.
##' @param SMP `rasterDestination` - Precipitation Sum. Path for new raster layer.
##' @param LGS `rasterDestination` - Length. Path for new raster layer.
##' @param FIRST `rasterDestination` - First Growing Day. Path for new raster layer.
##' @param LAST `rasterDestination` - Last Growing Day. Path for new raster layer.
##' @param TLH `rasterDestination` - Tree Line Height. Path for new raster layer.
##' @param DT_MIN `number` - Threshold Temperature. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SW_MIN `number` - Minimum Soil Water Content (Percent). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param LGS_MIN `number` - Minimum Length. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SMT_MIN `number` - Minimum Mean Temperature. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TLH_MAX_DIFF `number` - Maximum Tree Line Height Difference. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FIRST - outputRaster - First Growing Day
##' * LAST - outputRaster - Last Growing Day
##' * LGS - outputRaster - Length
##' * SMP - outputRaster - Precipitation Sum
##' * SMT - outputRaster - Mean Temperature
##' * TLH - outputRaster - Tree Line Height
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_treegrowthseason <- function(T = qgisprocess:::qgis_default_value(), TMIN = qgisprocess:::qgis_default_value(), TMAX = qgisprocess:::qgis_default_value(), P = qgisprocess:::qgis_default_value(), SWC = qgisprocess:::qgis_default_value(), SWC_DEFAULT = qgisprocess:::qgis_default_value(), SWC_SURFACE = qgisprocess:::qgis_default_value(), SW1_RESIST = qgisprocess:::qgis_default_value(), LAT_DEF = qgisprocess:::qgis_default_value(), SMT = qgisprocess:::qgis_default_value(), SMP = qgisprocess:::qgis_default_value(), LGS = qgisprocess:::qgis_default_value(), FIRST = qgisprocess:::qgis_default_value(), LAST = qgisprocess:::qgis_default_value(), TLH = qgisprocess:::qgis_default_value(), DT_MIN = qgisprocess:::qgis_default_value(), SW_MIN = qgisprocess:::qgis_default_value(), LGS_MIN = qgisprocess:::qgis_default_value(), SMT_MIN = qgisprocess:::qgis_default_value(), TLH_MAX_DIFF = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:treegrowthseason")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:treegrowthseason", `T` = T, `TMIN` = TMIN, `TMAX` = TMAX, `P` = P, `SWC` = SWC, `SWC_DEFAULT` = SWC_DEFAULT, `SWC_SURFACE` = SWC_SURFACE, `SW1_RESIST` = SW1_RESIST, `LAT_DEF` = LAT_DEF, `SMT` = SMT, `SMP` = SMP, `LGS` = LGS, `FIRST` = FIRST, `LAST` = LAST, `TLH` = TLH, `DT_MIN` = DT_MIN, `SW_MIN` = SW_MIN, `LGS_MIN` = LGS_MIN, `SMT_MIN` = SMT_MIN, `TLH_MAX_DIFF` = TLH_MAX_DIFF,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:treegrowthseason", `T` = T, `TMIN` = TMIN, `TMAX` = TMAX, `P` = P, `SWC` = SWC, `SWC_DEFAULT` = SWC_DEFAULT, `SWC_SURFACE` = SWC_SURFACE, `SW1_RESIST` = SW1_RESIST, `LAT_DEF` = LAT_DEF, `SMT` = SMT, `SMP` = SMP, `LGS` = LGS, `FIRST` = FIRST, `LAST` = LAST, `TLH` = TLH, `DT_MIN` = DT_MIN, `SW_MIN` = SW_MIN, `LGS_MIN` = LGS_MIN, `SMT_MIN` = SMT_MIN, `TLH_MAX_DIFF` = TLH_MAX_DIFF,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FIRST")
  }
}