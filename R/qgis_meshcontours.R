##' QGIS Algorithm provided by QGIS (native c++) Export contours (native:meshcontours)
##'
##' @title QGIS algorithm Export contours
##'
##' @param INPUT `mesh` - Input Mesh Layer. Path to a mesh layer.
##' @param DATASET_GROUPS `meshdatasetgroups` - Dataset groups. .
##' @param DATASET_TIME `meshdatasettime` - Dataset time. .
##' @param INCREMENT `number` - Increment between contour levels. A numeric value.
##' @param MINIMUM `number` - Minimum contour level. A numeric value.
##' @param MAXIMUM `number` - Maximum contour level. A numeric value.
##' @param CONTOUR_LEVEL_LIST `string` - List of contours level. String value.
##' @param CRS_OUTPUT `crs` - Output coordinate system. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param OUTPUT_LINES `sink` - Exported contour lines. Path for new vector layer.
##' @param OUTPUT_POLYGONS `sink` - Exported contour polygons. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT_LINES - outputVector - Exported contour lines
##' * OUTPUT_POLYGONS - outputVector - Exported contour polygons
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_meshcontours <- function(INPUT = qgisprocess::qgis_default_value(), DATASET_GROUPS = qgisprocess::qgis_default_value(), DATASET_TIME = qgisprocess::qgis_default_value(), INCREMENT = qgisprocess::qgis_default_value(), MINIMUM = qgisprocess::qgis_default_value(), MAXIMUM = qgisprocess::qgis_default_value(), CONTOUR_LEVEL_LIST = qgisprocess::qgis_default_value(), CRS_OUTPUT = qgisprocess::qgis_default_value(), OUTPUT_LINES = qgisprocess::qgis_default_value(), OUTPUT_POLYGONS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:meshcontours")

  output <- qgisprocess::qgis_run_algorithm("native:meshcontours", `INPUT` = INPUT, `DATASET_GROUPS` = DATASET_GROUPS, `DATASET_TIME` = DATASET_TIME, `INCREMENT` = INCREMENT, `MINIMUM` = MINIMUM, `MAXIMUM` = MAXIMUM, `CONTOUR_LEVEL_LIST` = CONTOUR_LEVEL_LIST, `CRS_OUTPUT` = CRS_OUTPUT, `OUTPUT_LINES` = OUTPUT_LINES, `OUTPUT_POLYGONS` = OUTPUT_POLYGONS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT_LINES")
  }
}