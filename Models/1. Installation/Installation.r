
dir.lib<-"C:\\Users\\L03054557\\OneDrive\\Edmundo-ITESM\\2.Cursos Impartidos\\Economic Dynamics and General Equilibrium Models\\Models\\Installation\\"

menuInstallLocal(paste0(dir.lib,"gEcon_1.2.0.zip"))
install.packages("nleqslv")


#test it works
library(gEcon)
dir.model<-"C:\\Users\\L03054557\\OneDrive\\Edmundo-ITESM\\2.Cursos Impartidos\\Economic Dynamics and General Equilibrium Models\\Models\\RealBusinessCycle\\"
gcn.file<-"rbc.gcn"
model <- make_model(paste0(dir.model,gcn.file))
steady_state(model)
get_ss_values(model)
