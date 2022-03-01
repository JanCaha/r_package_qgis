##' QGIS Algorithm provided by GRASS v.edit (grass7:v.edit)
##'
##' @title QGIS algorithm v.edit
##'
##' @param map `source` - Name of vector layer. Path to a vector layer.
##' @param type `enum`  of `("point", "line", "boundary", "centroid")` - Input feature type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param tool `enum`  of `("create", "add", "delete", "copy", "move", "flip", "catadd", "catdel", "merge", "break", "snap", "connect", "chtype", "vertexadd", "vertexdel", "vertexmove", "areadel", "zbulk", "select")` - Tool. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param input `file` - ASCII file for add tool. Path to a file.
##' @param move `string` - Difference in x,y,z direction for moving feature or vertex. String value.
##' @param threshold `string` - Threshold distance (coords,snap,query). String value.
##' @param ids `string` - Feature ids. String value.
##' @param cats `string` - Category values. String value.
##' @param coords `string` - List of point coordinates. String value.
##' @param bbox `extent` - Bounding box for selecting features. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param polygon `string` - Polygon for selecting features. String value.
##' @param where `string` - WHERE conditions of SQL statement without 'where' keyword. String value.
##' @param query `enum`  of `("length", "dangle")` - Query tool. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param bgmap `source` - Name of background vector map. Path to a vector layer.
##' @param snap `enum`  of `("no", "node", "vertex")` - Snap added or modified features in the given threshold to the nearest existing feature. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param zbulk `string` - Starting value and step for z bulk-labeling. Pair: value,step (e.g. 1100,10). String value.
##' @param .r `boolean` - Reverse selection. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -r.
##' @param .c `boolean` - Close added boundaries (using threshold distance). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.
##' @param .n `boolean` - Do not expect header of input data. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -n.
##' @param .b `boolean` - Do not build topology. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -b.
##' @param .arg_1 `boolean` - Modify only first found feature in bounding box. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -1.
##' @param output `vectorDestination` - Edited. Path for new vector layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value.
##' @param GRASS_OUTPUT_TYPE_PARAMETER `enum`  of `("auto", "point", "line", "area")` - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRASS_VECTOR_DSCO `string` - v.out.ogr output data source options (dsco). String value.
##' @param GRASS_VECTOR_LCO `string` - v.out.ogr output layer options (lco). String value.
##' @param GRASS_VECTOR_EXPORT_NOCAT `boolean` - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputVector - Edited
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_edit <- function(map = qgisprocess::qgis_default_value(), type = qgisprocess::qgis_default_value(), tool = qgisprocess::qgis_default_value(), input = qgisprocess::qgis_default_value(), move = qgisprocess::qgis_default_value(), threshold = qgisprocess::qgis_default_value(), ids = qgisprocess::qgis_default_value(), cats = qgisprocess::qgis_default_value(), coords = qgisprocess::qgis_default_value(), bbox = qgisprocess::qgis_default_value(), polygon = qgisprocess::qgis_default_value(), where = qgisprocess::qgis_default_value(), query = qgisprocess::qgis_default_value(), bgmap = qgisprocess::qgis_default_value(), snap = qgisprocess::qgis_default_value(), zbulk = qgisprocess::qgis_default_value(), .r = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), .n = qgisprocess::qgis_default_value(), .b = qgisprocess::qgis_default_value(), .arg_1 = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:v.edit")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:v.edit", `map` = map, `type` = type, `tool` = tool, `input` = input, `move` = move, `threshold` = threshold, `ids` = ids, `cats` = cats, `coords` = coords, `bbox` = bbox, `polygon` = polygon, `where` = where, `query` = query, `bgmap` = bgmap, `snap` = snap, `zbulk` = zbulk, `-r` = .r, `-c` = .c, `-n` = .n, `-b` = .b, `-1` = .arg_1, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:v.edit", `map` = map, `type` = type, `tool` = tool, `input` = input, `move` = move, `threshold` = threshold, `ids` = ids, `cats` = cats, `coords` = coords, `bbox` = bbox, `polygon` = polygon, `where` = where, `query` = query, `bgmap` = bgmap, `snap` = snap, `zbulk` = zbulk, `-r` = .r, `-c` = .c, `-n` = .n, `-b` = .b, `-1` = .arg_1, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}