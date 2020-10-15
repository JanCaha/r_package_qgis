build_fn_code <- function(alg, arguments, main_output) {

  alg_id <- fix_algorithm_id(alg$algorithm_id[1])

  if (alg$provider[1] == "native"){
    fn_name <- glue::glue("qgis_{alg_id}")
  }
  else {

    if (stringr::str_starts(alg$provider[1], "[:digit:]")) {
      fn_name <- glue::glue("qgis_{alg$provider[1]}_{alg_id}")
    } else {
      fn_name <- glue::glue("{alg$provider[1]}_{alg_id}")
    }
  }

  fn_arguments <- purrr::pmap(arguments,
                              function(name, ...){
                                  return(glue::glue("{convert_to_R_arg_names(name)} = qgisprocess::qgis_default_value()"))
                              })

  fn_arguments <- glue::glue_collapse(fn_arguments, sep = ", ")


  fn_arguments_qgis_run <- purrr::map(arguments$name, ~ glue::glue("`{.x}` = {convert_to_R_arg_names(.x)}"))
  fn_arguments_qgis_run <- glue::glue_collapse(fn_arguments_qgis_run, sep=", ")


  glue::glue("{fn_name} <- function({fn_arguments},..., .complete_output = TRUE) {{\n",
             "\n",
             "  output <- qgisprocess::qgis_run_algorithm(\"{alg$algorithm}\",{fn_arguments_qgis_run},...)\n",
             "  if (.complete_output) {{\n",
             "    return(output)\n",
             "  }}\n",
             "  else{{\n",
             "    qgisprocess::qgis_output(output, \"{main_output}\")\n",
             "}}\n",
             "}}")
}

build_fn_doc <- function(alg, arguments, outputs){

  title <- alg$algorithm_title[1]
  provider <- alg$provider_title[1]
  algorithm_id <- alg$algorithm[1]

  description_arguments <- purrr::pmap(arguments,
                                       function(name, description, qgis_type, available_values, acceptable_values, ...) {
                                         original_param_name <- ifelse(name != convert_to_R_arg_names(name),
                                                                       " Original algorithm parameter name: {name}.",
                                                                       "")

                                         if (identical(available_values, character(0))){
                                           string_values <- ""
                                         } else {
                                           string_values <- glue::glue_collapse(glue::double_quote(available_values), sep = ", ")
                                           string_values <- glue::glue(" of `({string_values})` ")
                                         }

                                         if (identical(acceptable_values, character(0))) {
                                           string_acceptable_values <- ""
                                         } else {
                                          string_acceptable_values <- glue::glue_collapse(acceptable_values, sep = ". ")
                                         }

                                         glue::glue("##' @param {convert_to_R_arg_names(name)} `{qgis_type}` {string_values}- {fix_description(description)}. {string_acceptable_values}.{original_param_name}")
                                       }
  )

  description_arguments <- glue::glue_collapse(description_arguments, sep = "\n")

  description_outputs <- purrr::pmap(outputs,
                                     function(name, description, qgis_output_type, ...) {
                                       glue::glue("##' * {name} - {qgis_output_type} - {description}")
                                     }
  )

  description_outputs <- glue::glue_collapse(description_outputs, sep = "\n")

  glue::glue(
    "##' QGIS Algorithm provided by {provider} {title} ({algorithm_id})\n",
    "##'\n",
    "##' @title QGIS algorithm {title}\n",
    "##'\n",
    "{description_arguments}",
    "\n",
    "##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`\n",
    "##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.\n",
    "##'\n",
    "##' @details\n",
    "##' ## Outputs description\n",
    "{description_outputs}",
    "\n",
    "##'\n",
    "##' @export\n",
    "##' @md\n",
    "##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value\n",
  )
}
