##' QGIS Algorithm provided by QGIS (native c++) Export contours (native:meshcontours). Creates contours as vector layer from mesh scalar dataset. This algorithm creates contours as a vector layer from a mesh scalar dataset.
##'
##' @title QGIS algorithm - Export contours
##'
##' @param INPUT `mesh` - Input mesh layer. Path to a mesh layer.
##' @param DATASET_GROUPS `meshdatasetgroups` - Dataset groups. .
##' @param DATASET_TIME `meshdatasettime` - Dataset time. .
##' @param INCREMENT `number` - Increment between contour levels. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MINIMUM `number` - Minimum contour level. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAXIMUM `number` - Maximum contour level. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CONTOUR_LEVEL_LIST `string` - List of contours level. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CRS_OUTPUT `crs` - Output coordinate system. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param OUTPUT_LINES `sink` - Exported contour lines. Path for new vector layer.
##' @param OUTPUT_POLYGONS `sink` - Exported contour polygons. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT_LINES - outputVector - Exported contour lines
##' * OUTPUT_POLYGONS - outputVector - Exported contour polygons
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_meshcontours <- function(INPUT = qgisprocess:::qgis_default_value(), DATASET_GROUPS = qgisprocess:::qgis_default_value(), DATASET_TIME = qgisprocess:::qgis_default_value(), INCREMENT = qgisprocess:::qgis_default_value(), MINIMUM = qgisprocess:::qgis_default_value(), MAXIMUM = qgisprocess:::qgis_default_value(), CONTOUR_LEVEL_LIST = qgisprocess:::qgis_default_value(), CRS_OUTPUT = qgisprocess:::qgis_default_value(), OUTPUT_LINES = qgisprocess:::qgis_default_value(), OUTPUT_POLYGONS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:meshcontours")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:meshcontours", `INPUT` = INPUT, `DATASET_GROUPS` = DATASET_GROUPS, `DATASET_TIME` = DATASET_TIME, `INCREMENT` = INCREMENT, `MINIMUM` = MINIMUM, `MAXIMUM` = MAXIMUM, `CONTOUR_LEVEL_LIST` = CONTOUR_LEVEL_LIST, `CRS_OUTPUT` = CRS_OUTPUT, `OUTPUT_LINES` = OUTPUT_LINES, `OUTPUT_POLYGONS` = OUTPUT_POLYGONS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:meshcontours", `INPUT` = INPUT, `DATASET_GROUPS` = DATASET_GROUPS, `DATASET_TIME` = DATASET_TIME, `INCREMENT` = INCREMENT, `MINIMUM` = MINIMUM, `MAXIMUM` = MAXIMUM, `CONTOUR_LEVEL_LIST` = CONTOUR_LEVEL_LIST, `CRS_OUTPUT` = CRS_OUTPUT, `OUTPUT_LINES` = OUTPUT_LINES, `OUTPUT_POLYGONS` = OUTPUT_POLYGONS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT_LINES")
  }
}