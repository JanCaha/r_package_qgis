##' QGIS Algorithm provided by QGIS (native c++) Rasterize mesh dataset (native:meshrasterize). Creates a raster layer from a mesh dataset This algorithm creates a raster layer from a mesh dataset. For data on volume (3D stacked dataset values), the exported dataset values are averaged on faces using the method defined in the mesh layer properties (default is Multi level averaging method). 1D meshes are not supported.
##'
##' @title QGIS algorithm - Rasterize mesh dataset
##'
##' @param INPUT `mesh` - Input mesh layer. Path to a mesh layer.
##' @param DATASET_GROUPS `meshdatasetgroups` - Dataset groups. .
##' @param DATASET_TIME `meshdatasettime` - Dataset time. .
##' @param EXTENT `extent` - Extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param PIXEL_SIZE `distance` - Pixel size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CRS_OUTPUT `crs` - Output coordinate system. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param OUTPUT `rasterDestination` - Output raster layer. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Output raster layer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_meshrasterize <- function(INPUT = qgisprocess:::qgis_default_value(), DATASET_GROUPS = qgisprocess:::qgis_default_value(), DATASET_TIME = qgisprocess:::qgis_default_value(), EXTENT = qgisprocess:::qgis_default_value(), PIXEL_SIZE = qgisprocess:::qgis_default_value(), CRS_OUTPUT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:meshrasterize")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:meshrasterize", `INPUT` = INPUT, `DATASET_GROUPS` = DATASET_GROUPS, `DATASET_TIME` = DATASET_TIME, `EXTENT` = EXTENT, `PIXEL_SIZE` = PIXEL_SIZE, `CRS_OUTPUT` = CRS_OUTPUT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:meshrasterize", `INPUT` = INPUT, `DATASET_GROUPS` = DATASET_GROUPS, `DATASET_TIME` = DATASET_TIME, `EXTENT` = EXTENT, `PIXEL_SIZE` = PIXEL_SIZE, `CRS_OUTPUT` = CRS_OUTPUT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}