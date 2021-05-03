##' QGIS Algorithm provided by QGIS (native c++) Export cross section dataset values on lines from mesh (native:meshexportcrosssection)
##'
##' @title QGIS algorithm Export cross section dataset values on lines from mesh
##'
##' @param INPUT `mesh` - Input Mesh Layer. Path to a mesh layer.
##' @param DATASET_GROUPS `meshdatasetgroups` - Dataset groups. .
##' @param DATASET_TIME `meshdatasettime` - Dataset time. .
##' @param INPUT_LINES `source` - Lines for data export. Path to a vector layer.
##' @param RESOLUTION `distance` - Line segmentation resolution. A numeric value.
##' @param COORDINATES_DIGITS `number` - Digits count for coordinates. A numeric value.
##' @param DATASET_DIGITS `number` - Digits count for dataset value. A numeric value.
##' @param OUTPUT `fileDestination` - Exported data CSV file. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputFile - Exported data CSV file
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_meshexportcrosssection <- function(INPUT = qgisprocess::qgis_default_value(), DATASET_GROUPS = qgisprocess::qgis_default_value(), DATASET_TIME = qgisprocess::qgis_default_value(), INPUT_LINES = qgisprocess::qgis_default_value(), RESOLUTION = qgisprocess::qgis_default_value(), COORDINATES_DIGITS = qgisprocess::qgis_default_value(), DATASET_DIGITS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:meshexportcrosssection")

  output <- qgisprocess::qgis_run_algorithm("native:meshexportcrosssection", `INPUT` = INPUT, `DATASET_GROUPS` = DATASET_GROUPS, `DATASET_TIME` = DATASET_TIME, `INPUT_LINES` = INPUT_LINES, `RESOLUTION` = RESOLUTION, `COORDINATES_DIGITS` = COORDINATES_DIGITS, `DATASET_DIGITS` = DATASET_DIGITS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}