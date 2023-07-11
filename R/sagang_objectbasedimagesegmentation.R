##' QGIS Algorithm provided by SAGA Next Gen Object based image segmentation (sagang:objectbasedimagesegmentation). ---------------- Arguments ----------------  FEATURES: Features 	Argument type:	multilayer NORMALIZE: Normalize 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OBJECTS: Segments 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer SEEDS_BAND_WIDTH: Band Width for Seed Point Generation 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RGA_NEIGHBOUR: Neighbourhood 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) 4 (Neumann) 		- 1: (1) 8 (Moore) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' RGA_METHOD: Distance 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) feature space and position 		- 1: (1) feature space 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' RGA_SIG_1: Variance in Feature Space 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RGA_SIG_2: Variance in Position Space 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RGA_SIMILARITY: Similarity Threshold 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MAJORITY_RADIUS: Generalization 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression POSTPROCESSING: Post-Processing 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) none 		- 1: (1) unsupervised classification 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' NCLUSTER: Number of Clusters 	Default value:	12 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SPLIT_CLUSTERS: Split Clusters 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Object based image segmentation
##'
##' @param FEATURES `multilayer` - Features. .
##' @param NORMALIZE `boolean` - Normalize. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OBJECTS `vectorDestination` - Segments. Path for new vector layer.
##' @param SEEDS_BAND_WIDTH `number` - Band Width for Seed Point Generation. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RGA_NEIGHBOUR `enum`  of `("(0) 4 (Neumann)", "(1) 8 (Moore)")` - Neighbourhood. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RGA_METHOD `enum`  of `("(0) feature space and position", "(1) feature space")` - Distance. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RGA_SIG_1 `number` - Variance in Feature Space. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RGA_SIG_2 `number` - Variance in Position Space. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RGA_SIMILARITY `number` - Similarity Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAJORITY_RADIUS `number` - Generalization. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param POSTPROCESSING `enum`  of `("(0) none", "(1) unsupervised classification")` - Post-Processing. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NCLUSTER `number` - Number of Clusters. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SPLIT_CLUSTERS `boolean` - Split Clusters. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OBJECTS - outputVector - Segments
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_objectbasedimagesegmentation <- function(FEATURES = qgisprocess:::qgis_default_value(), NORMALIZE = qgisprocess:::qgis_default_value(), OBJECTS = qgisprocess:::qgis_default_value(), SEEDS_BAND_WIDTH = qgisprocess:::qgis_default_value(), RGA_NEIGHBOUR = qgisprocess:::qgis_default_value(), RGA_METHOD = qgisprocess:::qgis_default_value(), RGA_SIG_1 = qgisprocess:::qgis_default_value(), RGA_SIG_2 = qgisprocess:::qgis_default_value(), RGA_SIMILARITY = qgisprocess:::qgis_default_value(), MAJORITY_RADIUS = qgisprocess:::qgis_default_value(), POSTPROCESSING = qgisprocess:::qgis_default_value(), NCLUSTER = qgisprocess:::qgis_default_value(), SPLIT_CLUSTERS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:objectbasedimagesegmentation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:objectbasedimagesegmentation", `FEATURES` = FEATURES, `NORMALIZE` = NORMALIZE, `OBJECTS` = OBJECTS, `SEEDS_BAND_WIDTH` = SEEDS_BAND_WIDTH, `RGA_NEIGHBOUR` = RGA_NEIGHBOUR, `RGA_METHOD` = RGA_METHOD, `RGA_SIG_1` = RGA_SIG_1, `RGA_SIG_2` = RGA_SIG_2, `RGA_SIMILARITY` = RGA_SIMILARITY, `MAJORITY_RADIUS` = MAJORITY_RADIUS, `POSTPROCESSING` = POSTPROCESSING, `NCLUSTER` = NCLUSTER, `SPLIT_CLUSTERS` = SPLIT_CLUSTERS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:objectbasedimagesegmentation", `FEATURES` = FEATURES, `NORMALIZE` = NORMALIZE, `OBJECTS` = OBJECTS, `SEEDS_BAND_WIDTH` = SEEDS_BAND_WIDTH, `RGA_NEIGHBOUR` = RGA_NEIGHBOUR, `RGA_METHOD` = RGA_METHOD, `RGA_SIG_1` = RGA_SIG_1, `RGA_SIG_2` = RGA_SIG_2, `RGA_SIMILARITY` = RGA_SIMILARITY, `MAJORITY_RADIUS` = MAJORITY_RADIUS, `POSTPROCESSING` = POSTPROCESSING, `NCLUSTER` = NCLUSTER, `SPLIT_CLUSTERS` = SPLIT_CLUSTERS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OBJECTS")
  }
}