##' QGIS Algorithm provided by SAGA Next Gen Export scalable vector graphics (svg) file (sagang:exportscalablevectorgraphicssvgfile). ---------------- Arguments ----------------  OUTPUT: Output 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) single layer 		- 1: (1) multiple layers 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' LAYERS: Layers 	Argument type:	multilayer LAYER: Layer 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD: Attribute 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names FILE: File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file
##'
##' @title QGIS algorithm - Export scalable vector graphics (svg) file
##'
##' @param OUTPUT `enum`  of `("(0) single layer", "(1) multiple layers")` - Output. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param LAYERS `multilayer` - Layers. .
##' @param LAYER `source` - Layer. Path to a vector layer.
##' @param FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param FILE `file` - File. Path to a file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' No output description provided.
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_exportscalablevectorgraphicssvgfile <- function(OUTPUT = qgisprocess:::qgis_default_value(), LAYERS = qgisprocess:::qgis_default_value(), LAYER = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exportscalablevectorgraphicssvgfile")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exportscalablevectorgraphicssvgfile", `OUTPUT` = OUTPUT, `LAYERS` = LAYERS, `LAYER` = LAYER, `FIELD` = FIELD, `FILE` = FILE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exportscalablevectorgraphicssvgfile", `OUTPUT` = OUTPUT, `LAYERS` = LAYERS, `LAYER` = LAYER, `FIELD` = FIELD, `FILE` = FILE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}