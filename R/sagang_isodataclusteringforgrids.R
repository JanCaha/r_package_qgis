##' QGIS Algorithm provided by SAGA Next Gen Isodata clustering for grids (sagang:isodataclusteringforgrids). ---------------- Arguments ----------------  FEATURES: Features 	Argument type:	multilayer CLUSTER: Clusters 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer STATISTICS: Statistics 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer NORMALIZE: Normalize 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ITERATIONS: Maximum Number of Iterations 	Default value:	20 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CLUSTER_INI: Initial Number of Clusters 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CLUSTER_MAX: Maximum Number of Clusters 	Default value:	16 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SAMPLES_MIN: Minimum Number of Samples in a Cluster 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression INITIALIZE: Start Partition 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) random 		- 1: (1) periodical 		- 2: (2) keep values 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Isodata clustering for grids
##'
##' @param FEATURES `multilayer` - Features. .
##' @param CLUSTER `rasterDestination` - Clusters. Path for new raster layer.
##' @param STATISTICS `vectorDestination` - Statistics. Path for new vector layer.
##' @param NORMALIZE `boolean` - Normalize. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ITERATIONS `number` - Maximum Number of Iterations. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CLUSTER_INI `number` - Initial Number of Clusters. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CLUSTER_MAX `number` - Maximum Number of Clusters. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SAMPLES_MIN `number` - Minimum Number of Samples in a Cluster. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param INITIALIZE `enum`  of `("(0) random", "(1) periodical", "(2) keep values")` - Start Partition. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CLUSTER - outputRaster - Clusters
##' * STATISTICS - outputVector - Statistics
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_isodataclusteringforgrids <- function(FEATURES = qgisprocess:::qgis_default_value(), CLUSTER = qgisprocess:::qgis_default_value(), STATISTICS = qgisprocess:::qgis_default_value(), NORMALIZE = qgisprocess:::qgis_default_value(), ITERATIONS = qgisprocess:::qgis_default_value(), CLUSTER_INI = qgisprocess:::qgis_default_value(), CLUSTER_MAX = qgisprocess:::qgis_default_value(), SAMPLES_MIN = qgisprocess:::qgis_default_value(), INITIALIZE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:isodataclusteringforgrids")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:isodataclusteringforgrids", `FEATURES` = FEATURES, `CLUSTER` = CLUSTER, `STATISTICS` = STATISTICS, `NORMALIZE` = NORMALIZE, `ITERATIONS` = ITERATIONS, `CLUSTER_INI` = CLUSTER_INI, `CLUSTER_MAX` = CLUSTER_MAX, `SAMPLES_MIN` = SAMPLES_MIN, `INITIALIZE` = INITIALIZE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:isodataclusteringforgrids", `FEATURES` = FEATURES, `CLUSTER` = CLUSTER, `STATISTICS` = STATISTICS, `NORMALIZE` = NORMALIZE, `ITERATIONS` = ITERATIONS, `CLUSTER_INI` = CLUSTER_INI, `CLUSTER_MAX` = CLUSTER_MAX, `SAMPLES_MIN` = SAMPLES_MIN, `INITIALIZE` = INITIALIZE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CLUSTER")
  }
}