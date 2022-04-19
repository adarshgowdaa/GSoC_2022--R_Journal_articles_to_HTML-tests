convert <- function(input_file, title, bib_file = NULL){
  
  #Converting from LaTeX to Markdown
  path = toString(tools::file_path_sans_ext(input_file))
  file_1 = paste(path, ".md", sep = "", collapse = NULL)
  rmarkdown::pandoc_convert(input_file, to = "markdown", output = file_1)
  
  #Creating New outputs directory
  dir.create("outputs")
  output_file = paste("outputs/", path,".Rmd",sep="")
  
  #Edit YAML Header
  data = paste("---","\n","title:",title,"\n","bibliography:",bib_file,"\n","output:","rjtools::rjournal_web_article","\n", sep = " ")
  sink(output_file, append = TRUE)
  cat(data)
  cat("---")
  cat("\n")
  sink()
  
  #Copying Other Contents
  file_2 = file(file_1, open = "rt")
  data = paste((input_lines <- readLines(file_2)), sep ="")
  sink(output_file, append = TRUE)
  cat(data)
  sink()
  close(file_2)
  
  #Copying Required Files
  
  
  #Generating HTML file
}
