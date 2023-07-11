##' QGIS Algorithm provided by SAGA Next Gen Morphometric features (sagang:morphometricfeatures). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FEATURES: Morphometric Features 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ELEVATION: Generalized Surface 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SLOPE: Slope 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ASPECT: Aspect 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PROFC: Profile Curvature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PLANC: Plan Curvature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer LONGC: Longitudinal Curvature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer CROSC: Cross-Sectional Curvature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MAXIC: Maximum Curvature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MINIC: Minimum Curvature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SIZE: Scale Radius (Cells) 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TOL_SLOPE: Slope Tolerance 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TOL_CURVE: Curvature Tolerance 	Default value:	0.0001 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXPONENT: Distance Weighting Exponent 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ZSCALE: Vertical Scaling 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CONSTRAIN: Constrain 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Morphometric features
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param FEATURES `rasterDestination` - Morphometric Features. Path for new raster layer.
##' @param ELEVATION `rasterDestination` - Generalized Surface. Path for new raster layer.
##' @param SLOPE `rasterDestination` - Slope. Path for new raster layer.
##' @param ASPECT `rasterDestination` - Aspect. Path for new raster layer.
##' @param PROFC `rasterDestination` - Profile Curvature. Path for new raster layer.
##' @param PLANC `rasterDestination` - Plan Curvature. Path for new raster layer.
##' @param LONGC `rasterDestination` - Longitudinal Curvature. Path for new raster layer.
##' @param CROSC `rasterDestination` - Cross-Sectional Curvature. Path for new raster layer.
##' @param MAXIC `rasterDestination` - Maximum Curvature. Path for new raster layer.
##' @param MINIC `rasterDestination` - Minimum Curvature. Path for new raster layer.
##' @param SIZE `number` - Scale Radius (Cells). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TOL_SLOPE `number` - Slope Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TOL_CURVE `number` - Curvature Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXPONENT `number` - Distance Weighting Exponent. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ZSCALE `number` - Vertical Scaling. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CONSTRAIN `boolean` - Constrain. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ASPECT - outputRaster - Aspect
##' * CROSC - outputRaster - Cross-Sectional Curvature
##' * ELEVATION - outputRaster - Generalized Surface
##' * FEATURES - outputRaster - Morphometric Features
##' * LONGC - outputRaster - Longitudinal Curvature
##' * MAXIC - outputRaster - Maximum Curvature
##' * MINIC - outputRaster - Minimum Curvature
##' * PLANC - outputRaster - Plan Curvature
##' * PROFC - outputRaster - Profile Curvature
##' * SLOPE - outputRaster - Slope
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_morphometricfeatures <- function(DEM = qgisprocess:::qgis_default_value(), FEATURES = qgisprocess:::qgis_default_value(), ELEVATION = qgisprocess:::qgis_default_value(), SLOPE = qgisprocess:::qgis_default_value(), ASPECT = qgisprocess:::qgis_default_value(), PROFC = qgisprocess:::qgis_default_value(), PLANC = qgisprocess:::qgis_default_value(), LONGC = qgisprocess:::qgis_default_value(), CROSC = qgisprocess:::qgis_default_value(), MAXIC = qgisprocess:::qgis_default_value(), MINIC = qgisprocess:::qgis_default_value(), SIZE = qgisprocess:::qgis_default_value(), TOL_SLOPE = qgisprocess:::qgis_default_value(), TOL_CURVE = qgisprocess:::qgis_default_value(), EXPONENT = qgisprocess:::qgis_default_value(), ZSCALE = qgisprocess:::qgis_default_value(), CONSTRAIN = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:morphometricfeatures")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:morphometricfeatures", `DEM` = DEM, `FEATURES` = FEATURES, `ELEVATION` = ELEVATION, `SLOPE` = SLOPE, `ASPECT` = ASPECT, `PROFC` = PROFC, `PLANC` = PLANC, `LONGC` = LONGC, `CROSC` = CROSC, `MAXIC` = MAXIC, `MINIC` = MINIC, `SIZE` = SIZE, `TOL_SLOPE` = TOL_SLOPE, `TOL_CURVE` = TOL_CURVE, `EXPONENT` = EXPONENT, `ZSCALE` = ZSCALE, `CONSTRAIN` = CONSTRAIN,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:morphometricfeatures", `DEM` = DEM, `FEATURES` = FEATURES, `ELEVATION` = ELEVATION, `SLOPE` = SLOPE, `ASPECT` = ASPECT, `PROFC` = PROFC, `PLANC` = PLANC, `LONGC` = LONGC, `CROSC` = CROSC, `MAXIC` = MAXIC, `MINIC` = MINIC, `SIZE` = SIZE, `TOL_SLOPE` = TOL_SLOPE, `TOL_CURVE` = TOL_CURVE, `EXPONENT` = EXPONENT, `ZSCALE` = ZSCALE, `CONSTRAIN` = CONSTRAIN,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ASPECT")
  }
}