character(0)

qgis_selectbylocation <- function(INPUT = qgisprocess::qgis_default_value(), PREDICATE = qgisprocess::qgis_default_value(), INTERSECT = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:selectbylocation",`INPUT` = INPUT, `PREDICATE` = PREDICATE, `INTERSECT` = INTERSECT, `METHOD` = METHOD,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NA")
  }
}