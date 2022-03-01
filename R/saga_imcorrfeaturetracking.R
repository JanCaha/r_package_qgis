##' QGIS Algorithm provided by SAGA Imcorr - feature tracking (saga:imcorrfeaturetracking)
##'
##' @title QGIS algorithm Imcorr - feature tracking
##'
##' @param GRID_1 `raster` - Grid 1. Path to a raster layer.
##' @param GRID_2 `raster` - Grid 2. Path to a raster layer.
##' @param DTM_1 `raster` - DTM 1. Path to a raster layer.
##' @param DTM_2 `raster` - DTM 2. Path to a raster layer.
##' @param CORRPOINTS `vectorDestination` - Correlated Points. Path for new vector layer.
##' @param CORRLINES `vectorDestination` - Displacement Vector. Path for new vector layer.
##' @param SEARCH_CHIPSIZE `enum`  of `("[0] 16x16", "[1] 32x32", "[2] 64x64", "[3] 128x128", "[4] 256x256")` - Search Chip Size (Cells). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param REF_CHIPSIZE `enum`  of `("[0] 16x16", "[1] 32x32", "[2] 64x64", "[3] 128x128")` - Reference Chip Size (Cells). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRID_SPACING `number` - Grid Spacing (Map Units). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CORRLINES - outputVector - Displacement Vector
##' * CORRPOINTS - outputVector - Correlated Points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_imcorrfeaturetracking <- function(GRID_1 = qgisprocess::qgis_default_value(), GRID_2 = qgisprocess::qgis_default_value(), DTM_1 = qgisprocess::qgis_default_value(), DTM_2 = qgisprocess::qgis_default_value(), CORRPOINTS = qgisprocess::qgis_default_value(), CORRLINES = qgisprocess::qgis_default_value(), SEARCH_CHIPSIZE = qgisprocess::qgis_default_value(), REF_CHIPSIZE = qgisprocess::qgis_default_value(), GRID_SPACING = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:imcorrfeaturetracking")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:imcorrfeaturetracking", `GRID_1` = GRID_1, `GRID_2` = GRID_2, `DTM_1` = DTM_1, `DTM_2` = DTM_2, `CORRPOINTS` = CORRPOINTS, `CORRLINES` = CORRLINES, `SEARCH_CHIPSIZE` = SEARCH_CHIPSIZE, `REF_CHIPSIZE` = REF_CHIPSIZE, `GRID_SPACING` = GRID_SPACING,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:imcorrfeaturetracking", `GRID_1` = GRID_1, `GRID_2` = GRID_2, `DTM_1` = DTM_1, `DTM_2` = DTM_2, `CORRPOINTS` = CORRPOINTS, `CORRLINES` = CORRLINES, `SEARCH_CHIPSIZE` = SEARCH_CHIPSIZE, `REF_CHIPSIZE` = REF_CHIPSIZE, `GRID_SPACING` = GRID_SPACING,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CORRLINES")
  }
}