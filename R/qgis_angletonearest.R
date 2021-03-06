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
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Aligned layer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_angletonearest <- function(INPUT = qgisprocess::qgis_default_value(), REFERENCE_LAYER = qgisprocess::qgis_default_value(), MAX_DISTANCE = qgisprocess::qgis_default_value(), FIELD_NAME = qgisprocess::qgis_default_value(), APPLY_SYMBOLOGY = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:angletonearest")

  output <- qgisprocess::qgis_run_algorithm("native:angletonearest", `INPUT` = INPUT, `REFERENCE_LAYER` = REFERENCE_LAYER, `MAX_DISTANCE` = MAX_DISTANCE, `FIELD_NAME` = FIELD_NAME, `APPLY_SYMBOLOGY` = APPLY_SYMBOLOGY, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}