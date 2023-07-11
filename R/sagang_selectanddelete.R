character(0)

sagang_selectanddelete <- function(SHAPES = qgisprocess:::qgis_default_value(), ATTRIBUTE = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), EXPRESSION = qgisprocess:::qgis_default_value(), COMPARE = qgisprocess:::qgis_default_value(), CASE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:selectanddelete")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:selectanddelete", `SHAPES` = SHAPES, `ATTRIBUTE` = ATTRIBUTE, `METHOD` = METHOD, `EXPRESSION` = EXPRESSION, `COMPARE` = COMPARE, `CASE` = CASE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:selectanddelete", `SHAPES` = SHAPES, `ATTRIBUTE` = ATTRIBUTE, `METHOD` = METHOD, `EXPRESSION` = EXPRESSION, `COMPARE` = COMPARE, `CASE` = CASE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}