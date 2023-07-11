##' QGIS Algorithm provided by SAGA Next Gen Multiresolution index of valley bottom flatness (mrvbf) (sagang:multiresolutionindexofvalleybottomflatnessmrvbf). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MRVBF: MRVBF 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MRRTF: MRRTF 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer T_SLOPE: Initial Threshold for Slope 	Default value:	16 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression T_PCTL_V: Threshold for Elevation Percentile (Lowness) 	Default value:	0.4 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression T_PCTL_R: Threshold for Elevation Percentile (Upness) 	Default value:	0.35 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression P_SLOPE: Shape Parameter for Slope 	Default value:	4 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression P_PCTL: Shape Parameter for Elevation Percentile 	Default value:	3 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression UPDATE: Update Views 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CLASSIFY: Classify 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MAX_RES: Maximum Resolution (Percentage) 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Multiresolution index of valley bottom flatness (mrvbf)
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param MRVBF `rasterDestination` - MRVBF. Path for new raster layer.
##' @param MRRTF `rasterDestination` - MRRTF. Path for new raster layer.
##' @param T_SLOPE `number` - Initial Threshold for Slope. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param T_PCTL_V `number` - Threshold for Elevation Percentile (Lowness). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param T_PCTL_R `number` - Threshold for Elevation Percentile (Upness). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param P_SLOPE `number` - Shape Parameter for Slope. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param P_PCTL `number` - Shape Parameter for Elevation Percentile. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param UPDATE `boolean` - Update Views. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CLASSIFY `boolean` - Classify. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAX_RES `number` - Maximum Resolution (Percentage). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * MRRTF - outputRaster - MRRTF
##' * MRVBF - outputRaster - MRVBF
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_multiresolutionindexofvalleybottomflatnessmrvbf <- function(DEM = qgisprocess:::qgis_default_value(), MRVBF = qgisprocess:::qgis_default_value(), MRRTF = qgisprocess:::qgis_default_value(), T_SLOPE = qgisprocess:::qgis_default_value(), T_PCTL_V = qgisprocess:::qgis_default_value(), T_PCTL_R = qgisprocess:::qgis_default_value(), P_SLOPE = qgisprocess:::qgis_default_value(), P_PCTL = qgisprocess:::qgis_default_value(), UPDATE = qgisprocess:::qgis_default_value(), CLASSIFY = qgisprocess:::qgis_default_value(), MAX_RES = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:multiresolutionindexofvalleybottomflatnessmrvbf")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:multiresolutionindexofvalleybottomflatnessmrvbf", `DEM` = DEM, `MRVBF` = MRVBF, `MRRTF` = MRRTF, `T_SLOPE` = T_SLOPE, `T_PCTL_V` = T_PCTL_V, `T_PCTL_R` = T_PCTL_R, `P_SLOPE` = P_SLOPE, `P_PCTL` = P_PCTL, `UPDATE` = UPDATE, `CLASSIFY` = CLASSIFY, `MAX_RES` = MAX_RES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:multiresolutionindexofvalleybottomflatnessmrvbf", `DEM` = DEM, `MRVBF` = MRVBF, `MRRTF` = MRRTF, `T_SLOPE` = T_SLOPE, `T_PCTL_V` = T_PCTL_V, `T_PCTL_R` = T_PCTL_R, `P_SLOPE` = P_SLOPE, `P_PCTL` = P_PCTL, `UPDATE` = UPDATE, `CLASSIFY` = CLASSIFY, `MAX_RES` = MAX_RES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "MRRTF")
  }
}