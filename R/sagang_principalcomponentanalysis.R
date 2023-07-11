##' QGIS Algorithm provided by SAGA Next Gen Principal component analysis (sagang:principalcomponentanalysis). ---------------- Arguments ----------------  GRIDS: Grids 	Argument type:	multilayer PCA: Principal Components 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer EIGEN_INPUT: Eigen Vectors (optional) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer EIGEN: Eigen Vectors 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer METHOD: Method 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) correlation matrix 		- 1: (1) variance-covariance matrix 		- 2: (2) sums-of-squares-and-cross-products matrix 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' COMPONENTS: Number of Components 	Default value:	3 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OVERWRITE: Overwrite Previous Results 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Principal component analysis
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param PCA `rasterDestination` - Principal Components. Path for new raster layer.
##' @param EIGEN_INPUT `source` - Eigen Vectors. Path to a vector layer.
##' @param EIGEN `vectorDestination` - Eigen Vectors. Path for new vector layer.
##' @param METHOD `enum`  of `("(0) correlation matrix", "(1) variance-covariance matrix", "(2) sums-of-squares-and-cross-products matrix")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param COMPONENTS `number` - Number of Components. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OVERWRITE `boolean` - Overwrite Previous Results. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * EIGEN - outputVector - Eigen Vectors
##' * PCA - outputRaster - Principal Components
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_principalcomponentanalysis <- function(GRIDS = qgisprocess:::qgis_default_value(), PCA = qgisprocess:::qgis_default_value(), EIGEN_INPUT = qgisprocess:::qgis_default_value(), EIGEN = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), COMPONENTS = qgisprocess:::qgis_default_value(), OVERWRITE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:principalcomponentanalysis")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:principalcomponentanalysis", `GRIDS` = GRIDS, `PCA` = PCA, `EIGEN_INPUT` = EIGEN_INPUT, `EIGEN` = EIGEN, `METHOD` = METHOD, `COMPONENTS` = COMPONENTS, `OVERWRITE` = OVERWRITE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:principalcomponentanalysis", `GRIDS` = GRIDS, `PCA` = PCA, `EIGEN_INPUT` = EIGEN_INPUT, `EIGEN` = EIGEN, `METHOD` = METHOD, `COMPONENTS` = COMPONENTS, `OVERWRITE` = OVERWRITE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "EIGEN")
  }
}