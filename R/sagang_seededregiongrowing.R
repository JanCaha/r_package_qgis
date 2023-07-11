##' QGIS Algorithm provided by SAGA Next Gen Seeded region growing (sagang:seededregiongrowing). ---------------- Arguments ----------------  SEEDS: Seeds 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FEATURES: Features 	Argument type:	multilayer SEGMENTS: Segments 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SIMILARITY: Similarity 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TABLE: Seeds 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer NORMALIZE: Normalize Features 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NEIGHBOUR: Neighbourhood 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) 4 (von Neumann) 		- 1: (1) 8 (Moore) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' METHOD: Method 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) feature space and position 		- 1: (1) feature space 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SIG_1: Variance in Feature Space 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SIG_2: Variance in Position Space 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression THRESHOLD: Similarity Threshold 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression REFRESH: Refresh 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression LEAFSIZE: Leaf Size (for Speed Optimisation) 	Default value:	256 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Seeded region growing
##'
##' @param SEEDS `raster` - Seeds. Path to a raster layer.
##' @param FEATURES `multilayer` - Features. .
##' @param SEGMENTS `rasterDestination` - Segments. Path for new raster layer.
##' @param SIMILARITY `rasterDestination` - Similarity. Path for new raster layer.
##' @param TABLE `vectorDestination` - Seeds. Path for new vector layer.
##' @param NORMALIZE `boolean` - Normalize Features. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NEIGHBOUR `enum`  of `("(0) 4 (von Neumann)", "(1) 8 (Moore)")` - Neighbourhood. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param METHOD `enum`  of `("(0) feature space and position", "(1) feature space")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SIG_1 `number` - Variance in Feature Space. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SIG_2 `number` - Variance in Position Space. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param THRESHOLD `number` - Similarity Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param REFRESH `boolean` - Refresh. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param LEAFSIZE `number` - Leaf Size (for Speed Optimisation). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SEGMENTS - outputRaster - Segments
##' * SIMILARITY - outputRaster - Similarity
##' * TABLE - outputVector - Seeds
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_seededregiongrowing <- function(SEEDS = qgisprocess:::qgis_default_value(), FEATURES = qgisprocess:::qgis_default_value(), SEGMENTS = qgisprocess:::qgis_default_value(), SIMILARITY = qgisprocess:::qgis_default_value(), TABLE = qgisprocess:::qgis_default_value(), NORMALIZE = qgisprocess:::qgis_default_value(), NEIGHBOUR = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), SIG_1 = qgisprocess:::qgis_default_value(), SIG_2 = qgisprocess:::qgis_default_value(), THRESHOLD = qgisprocess:::qgis_default_value(), REFRESH = qgisprocess:::qgis_default_value(), LEAFSIZE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:seededregiongrowing")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:seededregiongrowing", `SEEDS` = SEEDS, `FEATURES` = FEATURES, `SEGMENTS` = SEGMENTS, `SIMILARITY` = SIMILARITY, `TABLE` = TABLE, `NORMALIZE` = NORMALIZE, `NEIGHBOUR` = NEIGHBOUR, `METHOD` = METHOD, `SIG_1` = SIG_1, `SIG_2` = SIG_2, `THRESHOLD` = THRESHOLD, `REFRESH` = REFRESH, `LEAFSIZE` = LEAFSIZE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:seededregiongrowing", `SEEDS` = SEEDS, `FEATURES` = FEATURES, `SEGMENTS` = SEGMENTS, `SIMILARITY` = SIMILARITY, `TABLE` = TABLE, `NORMALIZE` = NORMALIZE, `NEIGHBOUR` = NEIGHBOUR, `METHOD` = METHOD, `SIG_1` = SIG_1, `SIG_2` = SIG_2, `THRESHOLD` = THRESHOLD, `REFRESH` = REFRESH, `LEAFSIZE` = LEAFSIZE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "SEGMENTS")
  }
}