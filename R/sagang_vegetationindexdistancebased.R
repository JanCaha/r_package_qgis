##' QGIS Algorithm provided by SAGA Next Gen Vegetation index (distance based) (sagang:vegetationindexdistancebased). ---------------- Arguments ----------------  RED: Red Reflectance 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer NIR: Near Infrared Reflectance 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer PVI0: Perpendicular Vegetation Index (Richardson and Wiegand, 1977) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PVI1: Perpendicular Vegetation Index (Perry and Lautenschlager, 1984) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PVI2: Perpendicular Vegetation Index (Walther and Shabaani) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PVI3: Perpendicular Vegetation Index (Qi, et al., 1994) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TSAVI: Transformed Soil Adjusted Vegetation Index (Baret et al. 1989) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ATSAVI: Transformed Soil Adjusted Vegetation Index (Baret and Guyot, 1991) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer INTERCEPT: Intercept of Soil Line 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SLOPE: Slope of Soil Line 	Default value:	0.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Vegetation index (distance based)
##'
##' @param RED `raster` - Red Reflectance. Path to a raster layer.
##' @param NIR `raster` - Near Infrared Reflectance. Path to a raster layer.
##' @param PVI0 `rasterDestination` - Perpendicular Vegetation Index (Richardson and Wiegand, 1977). Path for new raster layer.
##' @param PVI1 `rasterDestination` - Perpendicular Vegetation Index (Perry and Lautenschlager, 1984). Path for new raster layer.
##' @param PVI2 `rasterDestination` - Perpendicular Vegetation Index (Walther and Shabaani). Path for new raster layer.
##' @param PVI3 `rasterDestination` - Perpendicular Vegetation Index (Qi, et al., 1994). Path for new raster layer.
##' @param TSAVI `rasterDestination` - Transformed Soil Adjusted Vegetation Index (Baret et al. 1989). Path for new raster layer.
##' @param ATSAVI `rasterDestination` - Transformed Soil Adjusted Vegetation Index (Baret and Guyot, 1991). Path for new raster layer.
##' @param INTERCEPT `number` - Intercept of Soil Line. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SLOPE `number` - Slope of Soil Line. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ATSAVI - outputRaster - Transformed Soil Adjusted Vegetation Index (Baret and Guyot, 1991)
##' * PVI0 - outputRaster - Perpendicular Vegetation Index (Richardson and Wiegand, 1977)
##' * PVI1 - outputRaster - Perpendicular Vegetation Index (Perry and Lautenschlager, 1984)
##' * PVI2 - outputRaster - Perpendicular Vegetation Index (Walther and Shabaani)
##' * PVI3 - outputRaster - Perpendicular Vegetation Index (Qi, et al., 1994)
##' * TSAVI - outputRaster - Transformed Soil Adjusted Vegetation Index (Baret et al. 1989)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_vegetationindexdistancebased <- function(RED = qgisprocess:::qgis_default_value(), NIR = qgisprocess:::qgis_default_value(), PVI0 = qgisprocess:::qgis_default_value(), PVI1 = qgisprocess:::qgis_default_value(), PVI2 = qgisprocess:::qgis_default_value(), PVI3 = qgisprocess:::qgis_default_value(), TSAVI = qgisprocess:::qgis_default_value(), ATSAVI = qgisprocess:::qgis_default_value(), INTERCEPT = qgisprocess:::qgis_default_value(), SLOPE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:vegetationindexdistancebased")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:vegetationindexdistancebased", `RED` = RED, `NIR` = NIR, `PVI0` = PVI0, `PVI1` = PVI1, `PVI2` = PVI2, `PVI3` = PVI3, `TSAVI` = TSAVI, `ATSAVI` = ATSAVI, `INTERCEPT` = INTERCEPT, `SLOPE` = SLOPE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:vegetationindexdistancebased", `RED` = RED, `NIR` = NIR, `PVI0` = PVI0, `PVI1` = PVI1, `PVI2` = PVI2, `PVI3` = PVI3, `TSAVI` = TSAVI, `ATSAVI` = ATSAVI, `INTERCEPT` = INTERCEPT, `SLOPE` = SLOPE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ATSAVI")
  }
}