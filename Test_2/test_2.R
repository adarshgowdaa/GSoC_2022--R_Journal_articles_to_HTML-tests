convert <- function(input_file){
  rmarkdown::pandoc_convert(input_file, to = "markdown")
}
