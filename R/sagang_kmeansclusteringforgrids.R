##' QGIS Algorithm provided by SAGA Next Gen K-means clustering for grids (sagang:kmeansclusteringforgrids). ---------------- Arguments ----------------  GRIDS: Grids 	Argument type:	multilayer CLUSTER: Clusters 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer STATISTICS: Statistics 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer METHOD: Method 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Iterative Minimum Distance (Forgy 1965) 		- 1: (1) Hill-Climbing (Rubin 1967) 		- 2: (2) Combined Minimum Distance / Hillclimbing 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' NCLUSTER: Clusters 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MAXITER: Maximum Iterations 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NORMALISE: Normalise 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression INITIALIZE: Start Partition 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) random 		- 1: (1) periodical 		- 2: (2) keep values 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' OLDVERSION: Old Version 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression UPDATEVIEW: Update View 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - K-means clustering for grids
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param CLUSTER `rasterDestination` - Clusters. Path for new raster layer.
##' @param STATISTICS `vectorDestination` - Statistics. Path for new vector layer.
##' @param METHOD `enum`  of `("(0) Iterative Minimum Distance (Forgy 1965)", "(1) Hill-Climbing (Rubin 1967)", "(2) Combined Minimum Distance / Hillclimbing")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NCLUSTER `number` - Clusters. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAXITER `number` - Maximum Iterations. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NORMALISE `boolean` - Normalise. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param INITIALIZE `enum`  of `("(0) random", "(1) periodical", "(2) keep values")` - Start Partition. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OLDVERSION `boolean` - Old Version. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param UPDATEVIEW `boolean` - Update View. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

sagang_kmeansclusteringforgrids <- function(GRIDS = qgisprocess:::qgis_default_value(), CLUSTER = qgisprocess:::qgis_default_value(), STATISTICS = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), NCLUSTER = qgisprocess:::qgis_default_value(), MAXITER = qgisprocess:::qgis_default_value(), NORMALISE = qgisprocess:::qgis_default_value(), INITIALIZE = qgisprocess:::qgis_default_value(), OLDVERSION = qgisprocess:::qgis_default_value(), UPDATEVIEW = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:kmeansclusteringforgrids")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:kmeansclusteringforgrids", `GRIDS` = GRIDS, `CLUSTER` = CLUSTER, `STATISTICS` = STATISTICS, `METHOD` = METHOD, `NCLUSTER` = NCLUSTER, `MAXITER` = MAXITER, `NORMALISE` = NORMALISE, `INITIALIZE` = INITIALIZE, `OLDVERSION` = OLDVERSION, `UPDATEVIEW` = UPDATEVIEW,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:kmeansclusteringforgrids", `GRIDS` = GRIDS, `CLUSTER` = CLUSTER, `STATISTICS` = STATISTICS, `METHOD` = METHOD, `NCLUSTER` = NCLUSTER, `MAXITER` = MAXITER, `NORMALISE` = NORMALISE, `INITIALIZE` = INITIALIZE, `OLDVERSION` = OLDVERSION, `UPDATEVIEW` = UPDATEVIEW,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CLUSTER")
  }
}