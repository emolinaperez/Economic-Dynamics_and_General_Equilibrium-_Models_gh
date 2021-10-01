
#If you need a good reference this is really good.
#https://bookdown.org/yihui/rmarkdown/revealjs.html


#To Render the Document
#library(Rmardown)
#dir<-"C:\\Users\\L03054557\\OneDrive\\Edmundo-ITESM\\2.Cursos Impartidos\\ProgrammingPrinciplesforSocialSciences\\"
dir<-"C:\\Users\\L03054557\\OneDrive\\Edmundo-ITESM\\2.Cursos Impartidos\\Economic Dynamics and General Equilibrium Models\\Class 3\\"
setwd(dir)
file.name<-"Class3.rmd"
Sys.setenv(RSTUDIO_PANDOC="C:\\Program Files\\RStudio\\bin\\pandoc\\") #you can create this an environment variable too
rmarkdown::render(paste(dir,file.name,sep=""))

rmarkdown::render(paste(dir,file.name,sep=""), 'pdf_document')
