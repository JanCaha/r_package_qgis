##' QGIS Algorithm provided by QGIS (native c++) Create grid (native:creategrid). Creates a vector layer with a grid covering a given extent. This algorithm creates a vector layer with a grid covering a given extent. Elements in the grid can be points, lines or polygons. The size and/or placement of each element in the grid is defined using a horizontal and vertical spacing. The CRS of the output layer must be defined. The grid extent and the spacing values must be expressed in the coordinates and units of this CRS. The top-left point (minX, maxY) is used as the reference point. That means that, at that point, an element is guaranteed to be placed. Unless the width and height of the selected extent is a multiple of the selected spacing, that is not true for the other points that define that extent.
##'
##' @title QGIS algorithm - Create grid
##'
##' @param TYPE `enum`  of `("Point", "Line", "Rectangle (Polygon)", "Diamond (Polygon)", "Hexagon (Polygon)")` - Grid type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param EXTENT `extent` - Grid extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param HSPACING `distance` - Horizontal spacing. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param VSPACING `distance` - Vertical spacing. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param HOVERLAY `distance` - Horizontal overlay. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param VOVERLAY `distance` - Vertical overlay. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CRS `crs` - Grid CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param OUTPUT `sink` - Grid. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_creategrid <- function(TYPE = qgisprocess:::qgis_default_value(), EXTENT = qgisprocess:::qgis_default_value(), HSPACING = qgisprocess:::qgis_default_value(), VSPACING = qgisprocess:::qgis_default_value(), HOVERLAY = qgisprocess:::qgis_default_value(), VOVERLAY = qgisprocess:::qgis_default_value(), CRS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:creategrid")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:creategrid", `TYPE` = TYPE, `EXTENT` = EXTENT, `HSPACING` = HSPACING, `VSPACING` = VSPACING, `HOVERLAY` = HOVERLAY, `VOVERLAY` = VOVERLAY, `CRS` = CRS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:creategrid", `TYPE` = TYPE, `EXTENT` = EXTENT, `HSPACING` = HSPACING, `VSPACING` = VSPACING, `HOVERLAY` = HOVERLAY, `VOVERLAY` = VOVERLAY, `CRS` = CRS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}