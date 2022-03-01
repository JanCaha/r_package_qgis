##' QGIS Algorithm provided by QGIS Execute SQL (qgis:executesql)
##'
##' @title QGIS algorithm Execute SQL
##'
##' @param INPUT_DATASOURCES `multilayer` - Additional input datasources (called input1, .., inputN in the query). .
##' @param INPUT_QUERY `execute_sql` - SQL query. .
##' @param INPUT_UID_FIELD `string` - Unique identifier field. String value.
##' @param INPUT_GEOMETRY_FIELD `string` - Geometry field. String value.
##' @param INPUT_GEOMETRY_TYPE `enum`  of `("Autodetect", "No geometry", "Point", "LineString", "Polygon", "MultiPoint", "MultiLineString", "MultiPolygon")` - Geometry type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param INPUT_GEOMETRY_CRS `crs` - CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param OUTPUT `sink` - SQL Output. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - SQL Output
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_executesql <- function(INPUT_DATASOURCES = qgisprocess::qgis_default_value(), INPUT_QUERY = qgisprocess::qgis_default_value(), INPUT_UID_FIELD = qgisprocess::qgis_default_value(), INPUT_GEOMETRY_FIELD = qgisprocess::qgis_default_value(), INPUT_GEOMETRY_TYPE = qgisprocess::qgis_default_value(), INPUT_GEOMETRY_CRS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:executesql")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:executesql", `INPUT_DATASOURCES` = INPUT_DATASOURCES, `INPUT_QUERY` = INPUT_QUERY, `INPUT_UID_FIELD` = INPUT_UID_FIELD, `INPUT_GEOMETRY_FIELD` = INPUT_GEOMETRY_FIELD, `INPUT_GEOMETRY_TYPE` = INPUT_GEOMETRY_TYPE, `INPUT_GEOMETRY_CRS` = INPUT_GEOMETRY_CRS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:executesql", `INPUT_DATASOURCES` = INPUT_DATASOURCES, `INPUT_QUERY` = INPUT_QUERY, `INPUT_UID_FIELD` = INPUT_UID_FIELD, `INPUT_GEOMETRY_FIELD` = INPUT_GEOMETRY_FIELD, `INPUT_GEOMETRY_TYPE` = INPUT_GEOMETRY_TYPE, `INPUT_GEOMETRY_CRS` = INPUT_GEOMETRY_CRS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}