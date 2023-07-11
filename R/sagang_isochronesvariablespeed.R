##' QGIS Algorithm provided by SAGA Next Gen Isochrones variable speed (sagang:isochronesvariablespeed). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SLOPE: Slope 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FLOWACC: Catchment Area 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CN: Curve Number (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MANNING: Manning's N (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer TIME: Time Out(h) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SPEED: Speed (m/s) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer AVGMANNING: Avg. Manning's N 	Default value:	0.15 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression AVGCN: Avg. Curve Number 	Default value:	75 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression THRSMIXED: Mixed Flow Threshold (ha) 	Default value:	18 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression THRSCHANNEL: Channel Definition Threshold (ha) 	Default value:	360 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression AVGRAINFALL: Avg. Rainfall Intensity (mm/h) 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CHANSLOPE: Channel side slope(m/m) 	Default value:	0.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MINSPEED: Min. Flow Speed (m/s) 	Default value:	0.05 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TARGET_PT_X: Target X Coordinate 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TARGET_PT_Y: Target Y Coordinate 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TARGET_PT: Target Point (optional) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer
##'
##' @title QGIS algorithm - Isochrones variable speed
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param SLOPE `raster` - Slope. Path to a raster layer.
##' @param FLOWACC `raster` - Catchment Area. Path to a raster layer.
##' @param CN `raster` - Curve Number. Path to a raster layer.
##' @param MANNING `raster` - Manning's N. Path to a raster layer.
##' @param TIME `rasterDestination` - Time Out(h). Path for new raster layer.
##' @param SPEED `rasterDestination` - Speed (m\code{/}s). Path for new raster layer.
##' @param AVGMANNING `number` - Avg. Manning's N. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param AVGCN `number` - Avg. Curve Number. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param THRSMIXED `number` - Mixed Flow Threshold (ha). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param THRSCHANNEL `number` - Channel Definition Threshold (ha). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param AVGRAINFALL `number` - Avg. Rainfall Intensity (mm\code{/}h). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CHANSLOPE `number` - Channel side slope(m\code{/}m). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MINSPEED `number` - Min. Flow Speed (m\code{/}s). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TARGET_PT_X `number` - Target X Coordinate. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TARGET_PT_Y `number` - Target Y Coordinate. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TARGET_PT `source` - Target Point. Path to a vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SPEED - outputRaster - Speed (m\code{/}s)
##' * TIME - outputRaster - Time Out(h)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_isochronesvariablespeed <- function(DEM = qgisprocess:::qgis_default_value(), SLOPE = qgisprocess:::qgis_default_value(), FLOWACC = qgisprocess:::qgis_default_value(), CN = qgisprocess:::qgis_default_value(), MANNING = qgisprocess:::qgis_default_value(), TIME = qgisprocess:::qgis_default_value(), SPEED = qgisprocess:::qgis_default_value(), AVGMANNING = qgisprocess:::qgis_default_value(), AVGCN = qgisprocess:::qgis_default_value(), THRSMIXED = qgisprocess:::qgis_default_value(), THRSCHANNEL = qgisprocess:::qgis_default_value(), AVGRAINFALL = qgisprocess:::qgis_default_value(), CHANSLOPE = qgisprocess:::qgis_default_value(), MINSPEED = qgisprocess:::qgis_default_value(), TARGET_PT_X = qgisprocess:::qgis_default_value(), TARGET_PT_Y = qgisprocess:::qgis_default_value(), TARGET_PT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:isochronesvariablespeed")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:isochronesvariablespeed", `DEM` = DEM, `SLOPE` = SLOPE, `FLOWACC` = FLOWACC, `CN` = CN, `MANNING` = MANNING, `TIME` = TIME, `SPEED` = SPEED, `AVGMANNING` = AVGMANNING, `AVGCN` = AVGCN, `THRSMIXED` = THRSMIXED, `THRSCHANNEL` = THRSCHANNEL, `AVGRAINFALL` = AVGRAINFALL, `CHANSLOPE` = CHANSLOPE, `MINSPEED` = MINSPEED, `TARGET_PT_X` = TARGET_PT_X, `TARGET_PT_Y` = TARGET_PT_Y, `TARGET_PT` = TARGET_PT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:isochronesvariablespeed", `DEM` = DEM, `SLOPE` = SLOPE, `FLOWACC` = FLOWACC, `CN` = CN, `MANNING` = MANNING, `TIME` = TIME, `SPEED` = SPEED, `AVGMANNING` = AVGMANNING, `AVGCN` = AVGCN, `THRSMIXED` = THRSMIXED, `THRSCHANNEL` = THRSCHANNEL, `AVGRAINFALL` = AVGRAINFALL, `CHANSLOPE` = CHANSLOPE, `MINSPEED` = MINSPEED, `TARGET_PT_X` = TARGET_PT_X, `TARGET_PT_Y` = TARGET_PT_Y, `TARGET_PT` = TARGET_PT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "SPEED")
  }
}