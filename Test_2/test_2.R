convert <- function(input_file, title, bib_file = NULL){
  
  #Converting from LaTeX to Markdown
  file_1 = paste(toString(tools::file_path_sans_ext(input_file)), ".md", sep = "", collapse = NULL)
  rmarkdown::pandoc_convert(input_file, to = "markdown", output = file_1)
  
  #Edit YAML Header
  file_2 = file(file_1, open = "rt")
  input_lines <- readLines(file_1)
  header = "---"
  title_tag = "title:"
  bib = "bibliography:"
  output = "output:"
  set_to = "rjtools::rjournal_web_article"
  
  #Creating New outputs directory
  dir.create("outputs", showWarnings = FALSE)
  output_file = file(paste("outputs/",toString(tools::file_path_sans_ext(input_file)),".Rmd",sep=""), open="wt")
  writeLines(paste(paste(header,"\n",title_tag,title,"\n",bib,bib_file,"\n",output,set_to,"\n", sep = " "),""),con = output_file, useBytes = FALSE)
  writeLines(paste(header,""),con=output_file, useBytes = FALSE)
  writeLines(paste(input_lines,""),con=output_file, useBytes = FALSE)
  close.connection(file_2)
  close.connection(output_file)
  
  #Copying Required Files
  
  
  #Generating HTML file
}