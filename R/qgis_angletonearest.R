##' QGIS Algorithm provided by QGIS (native c++) Align points to features (native:angletonearest)
##'
##' @title QGIS algorithm Align points to features
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param REFERENCE_LAYER `source` - Reference layer. Path to a vector layer.
##' @param MAX_DISTANCE `distance` - Maximum distance to consider. A numeric value.
##' @param FIELD_NAME `string` - Angle field name. String value.
##' @param APPLY_SYMBOLOGY `boolean` - Automatically apply symbology. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `sink` - Aligned layer. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Aligned layer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_angletonearest <- function(INPUT = qgisprocess::qgis_default_value(), REFERENCE_LAYER = qgisprocess::qgis_default_value(), MAX_DISTANCE = qgisprocess::qgis_default_value(), FIELD_NAME = qgisprocess::qgis_default_value(), APPLY_SYMBOLOGY = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:angletonearest")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:angletonearest", `INPUT` = INPUT, `REFERENCE_LAYER` = REFERENCE_LAYER, `MAX_DISTANCE` = MAX_DISTANCE, `FIELD_NAME` = FIELD_NAME, `APPLY_SYMBOLOGY` = APPLY_SYMBOLOGY, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:angletonearest", `INPUT` = INPUT, `REFERENCE_LAYER` = REFERENCE_LAYER, `MAX_DISTANCE` = MAX_DISTANCE, `FIELD_NAME` = FIELD_NAME, `APPLY_SYMBOLOGY` = APPLY_SYMBOLOGY, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}