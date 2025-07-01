##' QGIS Algorithm provided by QGIS (native c++) TIN Mesh Creation (native:tinmeshcreation). Creates a TIN mesh layer from vector layers. This algorithm creates a TIN mesh layer from vector layers.
##'
##' @title QGIS algorithm - TIN Mesh Creation
##'
##' @param SOURCE_DATA `tininputlayers` - Input layers. .
##' @param MESH_FORMAT `enum`  of `("2DM", "SELAFIN", "PLY", "Ugrid", "Mike21")` - Output format. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CRS_OUTPUT `crs` - Output coordinate system. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param OUTPUT_MESH `fileDestination` - Output file. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT_MESH - outputFile - Output file
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_tinmeshcreation <- function(SOURCE_DATA = qgisprocess:::qgis_default_value(), MESH_FORMAT = qgisprocess:::qgis_default_value(), CRS_OUTPUT = qgisprocess:::qgis_default_value(), OUTPUT_MESH = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:tinmeshcreation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:tinmeshcreation", `SOURCE_DATA` = SOURCE_DATA, `MESH_FORMAT` = MESH_FORMAT, `CRS_OUTPUT` = CRS_OUTPUT, `OUTPUT_MESH` = OUTPUT_MESH,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:tinmeshcreation", `SOURCE_DATA` = SOURCE_DATA, `MESH_FORMAT` = MESH_FORMAT, `CRS_OUTPUT` = CRS_OUTPUT, `OUTPUT_MESH` = OUTPUT_MESH,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT_MESH")
  }
}