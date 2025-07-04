##' QGIS Algorithm provided by QGIS (native c++) Export cross section dataset values on lines from mesh (native:meshexportcrosssection). Extracts a mesh dataset's values from lines contained in a vector layer. This algorithm extracts mesh's dataset values from line contained in a vector layer. Each line is discretized with a resolution distance parameter for extraction of values on its vertices.
##'
##' @title QGIS algorithm - Export cross section dataset values on lines from mesh
##'
##' @param INPUT `mesh` - Input mesh layer. Path to a mesh layer.
##' @param DATASET_GROUPS `meshdatasetgroups` - Dataset groups. .
##' @param DATASET_TIME `meshdatasettime` - Dataset time. .
##' @param INPUT_LINES `source` - Lines for data export. Path to a vector layer.
##' @param RESOLUTION `distance` - Line segmentation resolution. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param COORDINATES_DIGITS `number` - Digits count for coordinates. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DATASET_DIGITS `number` - Digits count for dataset value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `fileDestination` - Exported data CSV file. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputFile - Exported data CSV file
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_meshexportcrosssection <- function(INPUT = qgisprocess:::qgis_default_value(), DATASET_GROUPS = qgisprocess:::qgis_default_value(), DATASET_TIME = qgisprocess:::qgis_default_value(), INPUT_LINES = qgisprocess:::qgis_default_value(), RESOLUTION = qgisprocess:::qgis_default_value(), COORDINATES_DIGITS = qgisprocess:::qgis_default_value(), DATASET_DIGITS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:meshexportcrosssection")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:meshexportcrosssection", `INPUT` = INPUT, `DATASET_GROUPS` = DATASET_GROUPS, `DATASET_TIME` = DATASET_TIME, `INPUT_LINES` = INPUT_LINES, `RESOLUTION` = RESOLUTION, `COORDINATES_DIGITS` = COORDINATES_DIGITS, `DATASET_DIGITS` = DATASET_DIGITS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:meshexportcrosssection", `INPUT` = INPUT, `DATASET_GROUPS` = DATASET_GROUPS, `DATASET_TIME` = DATASET_TIME, `INPUT_LINES` = INPUT_LINES, `RESOLUTION` = RESOLUTION, `COORDINATES_DIGITS` = COORDINATES_DIGITS, `DATASET_DIGITS` = DATASET_DIGITS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}