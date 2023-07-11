##' QGIS Algorithm provided by SAGA Next Gen Modifed quadratic shepard (sagang:modifedquadraticshepard). ---------------- Arguments ----------------  POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD: Attribute 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names CV_METHOD: Cross Validation 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) none 		- 1: (1) leave one out 		- 2: (2) 2-fold 		- 3: (3) k-fold 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CV_SUMMARY: Cross Validation Summary 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer CV_RESIDUALS: Cross Validation Residuals 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer CV_SAMPLES: Cross Validation Subsamples 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX: Output extent (optional) 	Argument type:	extent 	Acceptable values: 		- A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105' 		- Path to a layer. The extent of the layer is used. TARGET_USER_SIZE: Cellsize 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TARGET_OUT_GRID: Target Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer QUADRATIC_NEIGHBORS: Quadratic Neighbors 	Default value:	13 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression WEIGHTING_NEIGHBORS: Weighting Neighbors 	Default value:	19 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Modifed quadratic shepard
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param CV_METHOD `enum`  of `("(0) none", "(1) leave one out", "(2) 2-fold", "(3) k-fold")` - Cross Validation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CV_SUMMARY `vectorDestination` - Cross Validation Summary. Path for new vector layer.
##' @param CV_RESIDUALS `vectorDestination` - Cross Validation Residuals. Path for new vector layer.
##' @param CV_SAMPLES `number` - Cross Validation Subsamples. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used.. Original algorithm parameter name: TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX.
##' @param TARGET_USER_SIZE `number` - Cellsize. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TARGET_OUT_GRID `rasterDestination` - Target Grid. Path for new raster layer.
##' @param QUADRATIC_NEIGHBORS `number` - Quadratic Neighbors. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param WEIGHTING_NEIGHBORS `number` - Weighting Neighbors. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CV_RESIDUALS - outputVector - Cross Validation Residuals
##' * CV_SUMMARY - outputVector - Cross Validation Summary
##' * TARGET_OUT_GRID - outputRaster - Target Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_modifedquadraticshepard <- function(POINTS = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), CV_METHOD = qgisprocess:::qgis_default_value(), CV_SUMMARY = qgisprocess:::qgis_default_value(), CV_RESIDUALS = qgisprocess:::qgis_default_value(), CV_SAMPLES = qgisprocess:::qgis_default_value(), TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX = qgisprocess:::qgis_default_value(), TARGET_USER_SIZE = qgisprocess:::qgis_default_value(), TARGET_OUT_GRID = qgisprocess:::qgis_default_value(), QUADRATIC_NEIGHBORS = qgisprocess:::qgis_default_value(), WEIGHTING_NEIGHBORS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:modifedquadraticshepard")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:modifedquadraticshepard", `POINTS` = POINTS, `FIELD` = FIELD, `CV_METHOD` = CV_METHOD, `CV_SUMMARY` = CV_SUMMARY, `CV_RESIDUALS` = CV_RESIDUALS, `CV_SAMPLES` = CV_SAMPLES, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `TARGET_OUT_GRID` = TARGET_OUT_GRID, `QUADRATIC_NEIGHBORS` = QUADRATIC_NEIGHBORS, `WEIGHTING_NEIGHBORS` = WEIGHTING_NEIGHBORS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:modifedquadraticshepard", `POINTS` = POINTS, `FIELD` = FIELD, `CV_METHOD` = CV_METHOD, `CV_SUMMARY` = CV_SUMMARY, `CV_RESIDUALS` = CV_RESIDUALS, `CV_SAMPLES` = CV_SAMPLES, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `TARGET_OUT_GRID` = TARGET_OUT_GRID, `QUADRATIC_NEIGHBORS` = QUADRATIC_NEIGHBORS, `WEIGHTING_NEIGHBORS` = WEIGHTING_NEIGHBORS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CV_RESIDUALS")
  }
}