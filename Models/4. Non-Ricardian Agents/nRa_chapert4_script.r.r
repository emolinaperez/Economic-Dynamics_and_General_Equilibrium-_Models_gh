#Real business cycle
 library(gEcon)
 dir.model<-"C:\\Users\\L03054557\\OneDrive\\Edmundo-ITESM\\2.Cursos Impartidos\\Economic Dynamics and General Equilibrium Models\\Models\\4. Non-Ricardian Agents\\"
 gcn.file<-"nRa_chapter4.gcn"

#create a model from gcc.file
  model <- make_model(paste0(dir.model,gcn.file))

#set parameter values

#set initial conditions
  model <- initval_var(model, list(C = 0.8,
                                    C_1=0.8,
                                    C_2 = 0.2,
                                   L_s = 0.3,
                                    L_1_s = 0.3,
                                    L_2_s = 0.3,
                                   K_s = 3.5,
                                    K_1_s = 4.0,
                                   I = 0.2,
                                    I_1 = 0.3,
                                   Y = 1.0,
                                   A = 1.0))

#define steady state
 model <- steady_state(model)

#Now to explore output data
 get_ss_values(model)
 get_par_values(model)

#Solving for dynamics
 model <- solve_pert(model)

#printing the results
 get_pert_solution(model)

#Introducing shocks
  model <- set_shock_distr_par(model = model, distr_par = list("sd(epsilon_A)" = 0.01))
#Print all results
  model<- compute_model_stats(model)
  get_model_stats(model)

#Compute Impulse Response Function (IRFs)
  model_irf <- compute_irf(model = model, variables = c('C','C_1','C_2','L_s','L_1_s','L_2_s','K_s','K_1_s','I','I_1','Y','A'), sim_length = 40)

#Extract simulation values
  library(reshape2)
  out <- as.data.frame.table(model_irf@sim)
  out<-dcast(out,Var2  ~ Var1 , value.var="Freq")
  out$Case<-"Non-Ricardian Agents omega Medium"

#run another case
  model1 <- make_model(paste0(dir.model,gcn.file))
  model1 <- set_free_par(model1, list(omega = 0.2))
  model1 <- initval_var(model1, list(C = 0.8,
                                    C_1=0.8,
                                    C_2 = 0.2,
                                   L_s = 0.3,
                                    L_1_s = 0.3,
                                    L_2_s = 0.3,
                                   K_s = 3.5,
                                    K_1_s = 4.0,
                                   I = 0.2,
                                    I_1 = 0.3,
                                   Y = 1.0,
                                   A = 1.0))
  model1 <- steady_state(model1)
  model1 <- set_shock_distr_par(model = model1, distr_par = list("sd(epsilon_A)" = 0.01))
  model1 <- solve_pert(model1)
  model_irf1 <- compute_irf(model = model1, variables = c('C','C_1','C_2','L_s','L_1_s','L_2_s','K_s','K_1_s','I','I_1','Y','A'), sim_length = 40)
  out1 <- as.data.frame.table(model_irf1@sim)
  out1<-dcast(out1,Var2  ~ Var1 , value.var="Freq")
  out1$Case<-"Non-Ricardian Agents omega Low"

#
#run another case
  model2 <- make_model(paste0(dir.model,gcn.file))
  model2 <- set_free_par(model2, list(omega = 0.8))
  model2 <- initval_var(model2, list(C = 0.8,
                                    C_1=0.8,
                                    C_2 = 0.2,
                                   L_s = 0.3,
                                    L_1_s = 0.3,
                                    L_2_s = 0.3,
                                   K_s = 3.5,
                                    K_1_s = 4.0,
                                   I = 0.2,
                                    I_1 = 0.3,
                                   Y = 1.0,
                                   A = 1.0))
  model2 <- steady_state(model2)
  model2 <- set_shock_distr_par(model = model2, distr_par = list("sd(epsilon_A)" = 0.01))
  model2 <- solve_pert(model2)
  model_irf2 <- compute_irf(model = model2, variables = c('C','C_1','C_2','L_s','L_1_s','L_2_s','K_s','K_1_s','I','I_1','Y','A'), sim_length = 40)
  out2 <- as.data.frame.table(model_irf2@sim)
  out2<-dcast(out2,Var2  ~ Var1 , value.var="Freq")
  out2$Case<-"Non-Ricardian Agents omega High"


#rbind
  outf<-rbind(out,out1,out2)

#print simulation
  write.csv(outf,paste0(dir.model,"out.csv"),row.names=FALSE)
