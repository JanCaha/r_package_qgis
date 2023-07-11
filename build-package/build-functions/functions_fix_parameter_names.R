# set of functions to fix parameter name to make it R compliant

replace_starting_minus <- function(arg_name){
  if (stringr::str_starts(arg_name, "-")){
    return(stringr::str_replace(arg_name, "-", "."))
  }
  else{
    return(arg_name)
  }
}

remove_asterisk <- function(arg_name){
  stringr::str_remove_all(arg_name, "\\*")
}

replace_spaces <- function(arg_name){
  if (stringr::str_detect(arg_name, "[:whitespace:]")){
    return(stringr::str_replace_all(arg_name, "[:whitespace:]", "_"))
  } else {
    return(arg_name)
  }
}

add_arg_to_numeric_arguments <- function(arg_name){

  arg <- stringr::str_extract(arg_name, "-[:digit:]")
  if (!is.na(arg)){
    if (arg == arg_name){
      digit <- stringr::str_extract(arg_name, "[:digit:]")
      return(glue::glue("-arg_{digit}"))
    }
  }

  arg <- stringr::str_extract(arg_name, "[:digit:]")
  if (!is.na(arg)){
    if (arg == arg_name){
      digit <- stringr::str_extract(arg_name, "[:digit:]")
      return(glue::glue("arg_{digit}"))
    }
  }

  if (stringr::str_starts(arg_name, "[:digit:]")){
    return(glue::glue("arg_{arg_name}"))
  }

  return(arg_name)
}

add_arg_to_reserverd_keywords <- function(arg_name){
  if (arg_name %in% c("if", "else", "repeat", "while", "function", "for", "in", "next", "break",
                      "TRUE", "FALSE", "NULL", "Inf", "NaN", "NA",
                      "NA_integer_", "NA_real_", "NA_complex_", "NA_character_")){
    return(glue::glue("arg_{arg_name}"))
  }
  else{
    return(arg_name)
  }
}

remove_brackets <- function(description){
  description <- stringr::str_replace_all(description, "\\[" , "\\(")
  description <- stringr::str_replace_all(description, "\\]" , "\\)")
  description <- stringr::str_replace_all(description, "\\>" , "")
  description <- stringr::str_replace_all(description, "\\<" , "")

  return(description)
}

escape_division <- function(text){
  stringr::str_replace_all(text, "/", "\\\\code{/}")
}

escape_percent <- function(description){
  stringr::str_replace_all(description, "%" , "\\\\%")
}

fix_description <- function(description){
  description <- remove_brackets(description)
  #description <- escape_percent(description)
  description <- escape_division(description)

  return(description)
}

convert_to_R_arg_names <- function(arg_name){
  arg_name <- remove_asterisk(arg_name)
  arg_name <- add_arg_to_numeric_arguments(arg_name)
  arg_name <- replace_starting_minus(arg_name)
  arg_name <- add_arg_to_reserverd_keywords(arg_name)
  arg_name <- replace_spaces(arg_name)

  return(arg_name)
}
