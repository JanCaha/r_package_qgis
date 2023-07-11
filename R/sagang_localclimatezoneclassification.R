##' QGIS Algorithm provided by SAGA Next Gen Local climate zone classification (sagang:localclimatezoneclassification). ---------------- Arguments ----------------  FEATURES: Features 	Argument type:	multilayer GRIDDEFILE: grid definition for KML2shp conversion 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file FILE_TRAINING: Training Areas 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file RF_TREE_COUNT: Random Forest Tree Count 	Default value:	32 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CLASS_DEF_SRC: Class Definition 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) built-in 		- 1: (1) from file 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CLASS_DEF_FILE: Class Definition File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file LCZC: LCZC 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer LCZC_FILE: KMZ File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file LCZC_FILTERED: LCZC (Filtered) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FILE_FILTERED_LCZC: KMZ File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file FILTER_RADIUS: Majority Filter Radius 	Default value:	3 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Local climate zone classification
##'
##' @param FEATURES `multilayer` - Features. .
##' @param GRIDDEFILE `file` - grid definition for KML2shp conversion. Path to a file.
##' @param FILE_TRAINING `file` - Training Areas. Path to a file.
##' @param RF_TREE_COUNT `number` - Random Forest Tree Count. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CLASS_DEF_SRC `enum`  of `("(0) built-in", "(1) from file")` - Class Definition. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CLASS_DEF_FILE `file` - Class Definition File. Path to a file.
##' @param LCZC `rasterDestination` - LCZC. Path for new raster layer.
##' @param LCZC_FILE `file` - KMZ File. Path to a file.
##' @param LCZC_FILTERED `rasterDestination` - LCZC (Filtered). Path for new raster layer.
##' @param FILE_FILTERED_LCZC `file` - KMZ File. Path to a file.
##' @param FILTER_RADIUS `number` - Majority Filter Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * LCZC - outputRaster - LCZC
##' * LCZC_FILTERED - outputRaster - LCZC (Filtered)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_localclimatezoneclassification <- function(FEATURES = qgisprocess:::qgis_default_value(), GRIDDEFILE = qgisprocess:::qgis_default_value(), FILE_TRAINING = qgisprocess:::qgis_default_value(), RF_TREE_COUNT = qgisprocess:::qgis_default_value(), CLASS_DEF_SRC = qgisprocess:::qgis_default_value(), CLASS_DEF_FILE = qgisprocess:::qgis_default_value(), LCZC = qgisprocess:::qgis_default_value(), LCZC_FILE = qgisprocess:::qgis_default_value(), LCZC_FILTERED = qgisprocess:::qgis_default_value(), FILE_FILTERED_LCZC = qgisprocess:::qgis_default_value(), FILTER_RADIUS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:localclimatezoneclassification")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:localclimatezoneclassification", `FEATURES` = FEATURES, `GRIDDEFILE` = GRIDDEFILE, `FILE_TRAINING` = FILE_TRAINING, `RF_TREE_COUNT` = RF_TREE_COUNT, `CLASS_DEF_SRC` = CLASS_DEF_SRC, `CLASS_DEF_FILE` = CLASS_DEF_FILE, `LCZC` = LCZC, `LCZC_FILE` = LCZC_FILE, `LCZC_FILTERED` = LCZC_FILTERED, `FILE_FILTERED_LCZC` = FILE_FILTERED_LCZC, `FILTER_RADIUS` = FILTER_RADIUS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:localclimatezoneclassification", `FEATURES` = FEATURES, `GRIDDEFILE` = GRIDDEFILE, `FILE_TRAINING` = FILE_TRAINING, `RF_TREE_COUNT` = RF_TREE_COUNT, `CLASS_DEF_SRC` = CLASS_DEF_SRC, `CLASS_DEF_FILE` = CLASS_DEF_FILE, `LCZC` = LCZC, `LCZC_FILE` = LCZC_FILE, `LCZC_FILTERED` = LCZC_FILTERED, `FILE_FILTERED_LCZC` = FILE_FILTERED_LCZC, `FILTER_RADIUS` = FILTER_RADIUS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "LCZC")
  }
}