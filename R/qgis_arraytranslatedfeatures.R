##' QGIS Algorithm provided by QGIS (native c++) Array of translated features (native:arraytranslatedfeatures)
##'
##' @title QGIS algorithm Array of translated features
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param COUNT `number` - Number of features to create. A numeric value.
##' @param DELTA_X `distance` - Step distance (x-axis). A numeric value.
##' @param DELTA_Y `distance` - Step distance (y-axis). A numeric value.
##' @param DELTA_Z `number` - Step distance (z-axis). A numeric value.
##' @param DELTA_M `number` - Step distance (m values). A numeric value.
##' @param OUTPUT `sink` - Translated. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Translated
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_arraytranslatedfeatures <- function(INPUT = qgisprocess::qgis_default_value(), COUNT = qgisprocess::qgis_default_value(), DELTA_X = qgisprocess::qgis_default_value(), DELTA_Y = qgisprocess::qgis_default_value(), DELTA_Z = qgisprocess::qgis_default_value(), DELTA_M = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:arraytranslatedfeatures")
  output <- qgisprocess::qgis_run_algorithm("native:arraytranslatedfeatures",`INPUT` = INPUT, `COUNT` = COUNT, `DELTA_X` = DELTA_X, `DELTA_Y` = DELTA_Y, `DELTA_Z` = DELTA_Z, `DELTA_M` = DELTA_M, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}