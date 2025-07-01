##' QGIS Algorithm provided by QGIS (native c++) Affine transform (native:affinetransform). Applies an affine transformation to geometries. This algorithm applies an affine transformation to the geometries from a layer. Affine transformations can include translation, scaling and rotation. The operations are performed in a scale, rotation, translation order.  Z and M values present in the geometry can also be translated and scaled independently.
##'
##' @title QGIS algorithm - Affine transform
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param DELTA_X `distance` - Translation (x-axis). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DELTA_Y `distance` - Translation (y-axis). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DELTA_Z `number` - Translation (z-axis). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DELTA_M `number` - Translation (m values). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SCALE_X `number` - Scale factor (x-axis). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SCALE_Y `number` - Scale factor (y-axis). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SCALE_Z `number` - Scale factor (z-axis). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SCALE_M `number` - Scale factor (m values). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ROTATION_Z `number` - Rotation around z-axis (degrees counter-clockwise). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Transformed. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Transformed
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_affinetransform <- function(INPUT = qgisprocess:::qgis_default_value(), DELTA_X = qgisprocess:::qgis_default_value(), DELTA_Y = qgisprocess:::qgis_default_value(), DELTA_Z = qgisprocess:::qgis_default_value(), DELTA_M = qgisprocess:::qgis_default_value(), SCALE_X = qgisprocess:::qgis_default_value(), SCALE_Y = qgisprocess:::qgis_default_value(), SCALE_Z = qgisprocess:::qgis_default_value(), SCALE_M = qgisprocess:::qgis_default_value(), ROTATION_Z = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:affinetransform")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:affinetransform", `INPUT` = INPUT, `DELTA_X` = DELTA_X, `DELTA_Y` = DELTA_Y, `DELTA_Z` = DELTA_Z, `DELTA_M` = DELTA_M, `SCALE_X` = SCALE_X, `SCALE_Y` = SCALE_Y, `SCALE_Z` = SCALE_Z, `SCALE_M` = SCALE_M, `ROTATION_Z` = ROTATION_Z, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:affinetransform", `INPUT` = INPUT, `DELTA_X` = DELTA_X, `DELTA_Y` = DELTA_Y, `DELTA_Z` = DELTA_Z, `DELTA_M` = DELTA_M, `SCALE_X` = SCALE_X, `SCALE_Y` = SCALE_Y, `SCALE_Z` = SCALE_Z, `SCALE_M` = SCALE_M, `ROTATION_Z` = ROTATION_Z, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}