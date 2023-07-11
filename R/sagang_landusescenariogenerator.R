##' QGIS Algorithm provided by SAGA Next Gen Land use scenario generator (sagang:landusescenariogenerator). ---------------- Arguments ----------------  FIELDS: Fields 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD_ID: Field Identifier 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names SCENARIO: Land Use Scenario 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer OUTPUT: Output of... 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Identifier 		- 1: (1) Name 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' STATISTICS: Crop Statistics 	Argument type:	source 	Acceptable values: 		- Path to a vector layer KNOWN_CROPS: Known Crops (optional) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer
##'
##' @title QGIS algorithm - Land use scenario generator
##'
##' @param FIELDS `source` - Fields. Path to a vector layer.
##' @param FIELD_ID `field` - Field Identifier. The name of an existing field. ; delimited list of existing field names.
##' @param SCENARIO `vectorDestination` - Land Use Scenario. Path for new vector layer.
##' @param OUTPUT `enum`  of `("(0) Identifier", "(1) Name")` - Output of.... Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param STATISTICS `source` - Crop Statistics. Path to a vector layer.
##' @param KNOWN_CROPS `source` - Known Crops. Path to a vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SCENARIO - outputVector - Land Use Scenario
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_landusescenariogenerator <- function(FIELDS = qgisprocess:::qgis_default_value(), FIELD_ID = qgisprocess:::qgis_default_value(), SCENARIO = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), STATISTICS = qgisprocess:::qgis_default_value(), KNOWN_CROPS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:landusescenariogenerator")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:landusescenariogenerator", `FIELDS` = FIELDS, `FIELD_ID` = FIELD_ID, `SCENARIO` = SCENARIO, `OUTPUT` = OUTPUT, `STATISTICS` = STATISTICS, `KNOWN_CROPS` = KNOWN_CROPS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:landusescenariogenerator", `FIELDS` = FIELDS, `FIELD_ID` = FIELD_ID, `SCENARIO` = SCENARIO, `OUTPUT` = OUTPUT, `STATISTICS` = STATISTICS, `KNOWN_CROPS` = KNOWN_CROPS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "SCENARIO")
  }
}