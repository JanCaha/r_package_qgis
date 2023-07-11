##' QGIS Algorithm provided by SAGA Next Gen Superpixel segmentation (sagang:superpixelsegmentation). ---------------- Arguments ----------------  FEATURES: Features 	Argument type:	multilayer NORMALIZE: Normalize 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression POLYGONS: Segments 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer MAX_ITERATIONS: Maximum Iterations 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression REGULARIZATION: Regularization 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SIZE: Region Size 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SIZE_MIN: Minimum Region Size 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SUPERPIXELS_DO: Create Superpixel Grids 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SUPERPIXELS: Superpixels 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer POSTPROCESSING: Post-Processing 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) none 		- 1: (1) unsupervised classification 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' NCLUSTER: Number of Clusters 	Default value:	12 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SPLIT_CLUSTERS: Split Clusters 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Superpixel segmentation
##'
##' @param FEATURES `multilayer` - Features. .
##' @param NORMALIZE `boolean` - Normalize. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param POLYGONS `vectorDestination` - Segments. Path for new vector layer.
##' @param MAX_ITERATIONS `number` - Maximum Iterations. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param REGULARIZATION `number` - Regularization. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SIZE `number` - Region Size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SIZE_MIN `number` - Minimum Region Size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SUPERPIXELS_DO `boolean` - Create Superpixel Grids. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SUPERPIXELS `rasterDestination` - Superpixels. Path for new raster layer.
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
##' * POLYGONS - outputVector - Segments
##' * SUPERPIXELS - outputRaster - Superpixels
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_superpixelsegmentation <- function(FEATURES = qgisprocess:::qgis_default_value(), NORMALIZE = qgisprocess:::qgis_default_value(), POLYGONS = qgisprocess:::qgis_default_value(), MAX_ITERATIONS = qgisprocess:::qgis_default_value(), REGULARIZATION = qgisprocess:::qgis_default_value(), SIZE = qgisprocess:::qgis_default_value(), SIZE_MIN = qgisprocess:::qgis_default_value(), SUPERPIXELS_DO = qgisprocess:::qgis_default_value(), SUPERPIXELS = qgisprocess:::qgis_default_value(), POSTPROCESSING = qgisprocess:::qgis_default_value(), NCLUSTER = qgisprocess:::qgis_default_value(), SPLIT_CLUSTERS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:superpixelsegmentation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:superpixelsegmentation", `FEATURES` = FEATURES, `NORMALIZE` = NORMALIZE, `POLYGONS` = POLYGONS, `MAX_ITERATIONS` = MAX_ITERATIONS, `REGULARIZATION` = REGULARIZATION, `SIZE` = SIZE, `SIZE_MIN` = SIZE_MIN, `SUPERPIXELS_DO` = SUPERPIXELS_DO, `SUPERPIXELS` = SUPERPIXELS, `POSTPROCESSING` = POSTPROCESSING, `NCLUSTER` = NCLUSTER, `SPLIT_CLUSTERS` = SPLIT_CLUSTERS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:superpixelsegmentation", `FEATURES` = FEATURES, `NORMALIZE` = NORMALIZE, `POLYGONS` = POLYGONS, `MAX_ITERATIONS` = MAX_ITERATIONS, `REGULARIZATION` = REGULARIZATION, `SIZE` = SIZE, `SIZE_MIN` = SIZE_MIN, `SUPERPIXELS_DO` = SUPERPIXELS_DO, `SUPERPIXELS` = SUPERPIXELS, `POSTPROCESSING` = POSTPROCESSING, `NCLUSTER` = NCLUSTER, `SPLIT_CLUSTERS` = SPLIT_CLUSTERS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "POLYGONS")
  }
}