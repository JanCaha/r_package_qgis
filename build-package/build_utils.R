# variable for template
qgis_build_version <- stringr::str_match(qgisprocess::qgis_version(), "[0-9.]+[[:cntrl:][:alnum:]]")[,1]

# load function template
fun_tmpl <- readr::read_file("build-package/templates/fun_onLoad.R")

# evaluate function template against existing variables
fun_code <- glue::glue(fun_tmpl)

readr::write_file(glue::glue_collapse(list(fun_code,
                                           readr::read_file("build-package/functions/check_algorithm_necessities.R")),
                                      sep = "\n\n"),
                  glue::glue("./R/utils.R"))
