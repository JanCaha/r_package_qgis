##' QGIS Algorithm provided by SAGA Land use scenario generator (saga:landusescenariogenerator)
##'
##' @title QGIS algorithm Land use scenario generator
##'
##' @param FIELDS `source` - Fields. Path to a vector layer.
##' @param FIELD_ID `source` - Field Identifier. Path to a vector layer.
##' @param SCENARIO `vectorDestination` - Land Use Scenario. Path for new vector layer.
##' @param OUTPUT `enum`  of `("[0] Identifier", "[1] Name")` - Output of.... Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param STATISTICS `source` - Crop Statistics. Path to a vector layer.
##' @param KNOWN_CROPS `source` - Known Crops. Path to a vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * SCENARIO - outputVector - Land Use Scenario
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_landusescenariogenerator <- function(FIELDS = qgisprocess::qgis_default_value(), FIELD_ID = qgisprocess::qgis_default_value(), SCENARIO = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), STATISTICS = qgisprocess::qgis_default_value(), KNOWN_CROPS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:landusescenariogenerator",`FIELDS` = FIELDS, `FIELD_ID` = FIELD_ID, `SCENARIO` = SCENARIO, `OUTPUT` = OUTPUT, `STATISTICS` = STATISTICS, `KNOWN_CROPS` = KNOWN_CROPS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "SCENARIO")
  }
}