# Generated on 2019-09-24 11:51:53 by gEcon ver. 1.2.0 (2019-09-08)
# http://gecon.r-forge.r-project.org/

# Model name: rbc

# info
info__ <- c("rbc", "C:/Users/L03054557/OneDrive/Edmundo-ITESM/2.Cursos Impartidos/Economic Dynamics and General Equilibrium Models/Models/RealBusinessCycle/rbc.gcn", "2019-09-24 11:51:53", "false")

# index sets
index_sets__ <- list()

# variables
variables__ <- c("pi",
                 "r",
                 "A",
                 "C",
                 "I",
                 "K_s",
                 "L_s",
                 "PI",
                 "U",
                 "W",
                 "Y")

variables_tex__ <- c("\\pi",
                     "r",
                     "A",
                     "C",
                     "I",
                     "K^{\\mathrm{s}}",
                     "L^{\\mathrm{s}}",
                     "\\Pi",
                     "U",
                     "W",
                     "Y")

# shocks
shocks__ <- c("epsilon_A")

shocks_tex__ <- c("\\epsilon^{\\mathrm{A}}")

# parameters
parameters__ <- c("alpha",
                  "beta",
                  "delta",
                  "eta",
                  "mu",
                  "phi",
                  "psi")

parameters_tex__ <- c("\\alpha",
                     "\\beta",
                     "\\delta",
                     "\\eta",
                     "\\mu",
                     "\\phi",
                     "\\psi")

# free parameters
parameters_free__ <- c("beta",
                       "delta",
                       "eta",
                       "mu",
                       "phi",
                       "psi")

# free parameters' values
parameters_free_val__ <- c(0.99,
                           0.025,
                           2,
                           0.3,
                           0.95,
                           0.8)

# equations
equations__ <- c("-pi[] + PI[] = 0",
                 "-r[] + alpha * A[] * K_s[-1]^(-1 + alpha) * L_s[]^(1 - alpha) = 0",
                 "-A[] + exp(epsilon_A[] + phi * log(A[-1])) = 0",
                 "-W[] + A[] * (1 - alpha) * K_s[-1]^alpha * L_s[]^(-alpha) = 0",
                 "-Y[] + A[] * K_s[-1]^alpha * L_s[]^(1 - alpha) = 0",
                 "beta * (mu * E[][(r[1] - psi * (-delta + K_s[]^-1 * I[1])^2 + 2 * psi * K_s[]^-1 * I[1] * (-delta + K_s[]^-1 * I[1])) * C[1]^(-1 + mu) * (1 - L_s[1])^(1 - mu) * (C[1]^mu * (1 - L_s[1])^(1 - mu))^(-eta)] - mu * (1 - delta) * E[][(-1 - 2 * psi * (-delta + K_s[]^-1 * I[1])) * C[1]^(-1 + mu) * (1 - L_s[1])^(1 - mu) * (C[1]^mu * (1 - L_s[1])^(1 - mu))^(-eta)]) + mu * (-1 - 2 * psi * (-delta + K_s[-1]^-1 * I[])) * C[]^(-1 + mu) * (1 - L_s[])^(1 - mu) * (C[]^mu * (1 - L_s[])^(1 - mu))^(-eta) = 0",
                 "(-1 + mu) * C[]^mu * (1 - L_s[])^(-mu) * (C[]^mu * (1 - L_s[])^(1 - mu))^(-eta) + mu * W[] * C[]^(-1 + mu) * (1 - L_s[])^(1 - mu) * (C[]^mu * (1 - L_s[])^(1 - mu))^(-eta) = 0",
                 "I[] - K_s[] + K_s[-1] * (1 - delta) = 0",
                 "U[] - beta * E[][U[1]] - (1 - eta)^-1 * (C[]^mu * (1 - L_s[])^(1 - mu))^(1 - eta) = 0",
                 "-pi[] + Y[] - K_s[-1] * r[] - L_s[] * W[] = 0",
                 "pi[] - C[] - I[] + K_s[-1] * r[] + L_s[] * W[] - psi * K_s[-1] * (-delta + K_s[-1]^-1 * I[])^2 = 0")

# calibrating equations
calibr_equations__ <- c("-0.36 * Y[ss] + r[ss] * K_s[ss] = 0")

# variables / equations map
vareqmap__ <- sparseMatrix(i = c(1, 1, 2, 2, 2, 2, 3, 4, 4, 4,
                                 4, 5, 5, 5, 5, 6, 6, 6, 6, 6,
                                 7, 7, 7, 8, 8, 9, 9, 9, 10, 10,
                                 10, 10, 10, 10, 11, 11, 11, 11, 11, 11,
                                 11),
                           j = c(1, 8, 2, 3, 6, 7, 3, 3, 6, 7,
                                 10, 3, 6, 7, 11, 2, 4, 5, 6, 7,
                                 4, 7, 10, 5, 6, 4, 7, 9, 1, 2,
                                 6, 7, 10, 11, 1, 2, 4, 5, 6, 7,
                                 10),
                           x = c(2, 2, 2, 2, 1, 2, 3, 2, 1, 2,
                                 2, 2, 1, 2, 2, 4, 6, 6, 3, 6,
                                 2, 2, 2, 2, 3, 2, 2, 6, 2, 2,
                                 1, 2, 2, 2, 2, 2, 2, 2, 1, 2,
                                 2),
                           dims = c(11, 11))

# variables / calibrating equations map
varcalibreqmap__ <- sparseMatrix(i = c(1, 1, 1),
                                 j = c(2, 6, 11),
                                 x = rep(1, 3), dims = c(1, 11))

# calibrated parameters / equations map
calibrpareqmap__ <- sparseMatrix(i = c(2, 4, 5),
                                 j = c(1, 1, 1),
                                 x = rep(1, 3), dims = c(11, 1))

# calibrated parameters / calibrating equations map
calibrparcalibreqmap__ <- sparseMatrix(i = NULL, j = NULL, dims = c(1, 1))

# free parameters / equations map
freepareqmap__ <- sparseMatrix(i = c(3, 6, 6, 6, 6, 6, 7, 7, 8, 9,
                                     9, 9, 11, 11),
                               j = c(5, 1, 2, 3, 4, 6, 3, 4, 2, 1,
                                     3, 4, 2, 6),
                               x = rep(1, 14), dims = c(11, 6))

# free parameters / calibrating equations map
freeparcalibreqmap__ <- sparseMatrix(i = NULL, j = NULL, dims = c(1, 6))

# shocks / equations map
shockeqmap__ <- sparseMatrix(i = c(3),
                             j = c(1),
                             x = rep(1, 1), dims = c(11, 1))

# steady state equations
ss_eq__ <- function(v, pc, pf)
{
    r <- numeric(11)
    r[1] = -v[1] + v[8]
    r[2] = -v[2] + pc[1] * v[3] * v[6]^(-1 + pc[1]) * v[7]^(1 - pc[1])
    r[3] = -v[3] + exp(pf[5] * log(v[3]))
    r[4] = -v[10] + v[3] * (1 - pc[1]) * v[6]^pc[1] * v[7]^(-pc[1])
    r[5] = -v[11] + v[3] * v[6]^pc[1] * v[7]^(1 - pc[1])
    r[6] = pf[1] * (pf[4] * (v[2] - pf[6] * (-pf[2] + v[5] * v[6]^-1)^2 + 2 * pf[6] * v[5] * v[6]^-1 * (-pf[2] + v[5] * v[6]^-1)) * v[4]^(-1 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]) - pf[4] * (-1 - 2 * pf[6] * (-pf[2] + v[5] * v[6]^-1)) * (1 - pf[2]) * v[4]^(-1 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3])) + pf[4] * (-1 - 2 * pf[6] * (-pf[2] + v[5] * v[6]^-1)) * v[4]^(-1 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3])
    r[7] = (-1 + pf[4]) * v[4]^pf[4] * (1 - v[7])^(-pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]) + pf[4] * v[10] * v[4]^(-1 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3])
    r[8] = v[5] - v[6] + v[6] * (1 - pf[2])
    r[9] = v[9] - pf[1] * v[9] - (1 - pf[3])^-1 * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(1 - pf[3])
    r[10] = -v[1] + v[11] - v[2] * v[6] - v[7] * v[10]
    r[11] = v[1] - v[4] - v[5] + v[2] * v[6] + v[7] * v[10] - pf[6] * v[6] * (-pf[2] + v[5] * v[6]^-1)^2

    return(r)
}

# calibrating equations
calibr_eq__ <- function(v, pc, pf)
{
    r <- numeric(1)
    r[1] = -0.36 * v[11] + v[2] * v[6]

    return(r)
}

# steady state and calibrating equations Jacobian
ss_calibr_eq_jacob__ <- function(v, pc, pf)
{
    r <- numeric(1)
    jac <- numeric(47)
    jac[1] = -1
    jac[2] = 1
    jac[3] = -1
    jac[4] = pc[1] * v[6]^(-1 + pc[1]) * v[7]^(1 - pc[1])
    jac[5] = pc[1] * v[3] * (-1 + pc[1]) * v[6]^(-2 + pc[1]) * v[7]^(1 - pc[1])
    jac[6] = pc[1] * v[3] * (1 - pc[1]) * v[6]^(-1 + pc[1]) * v[7]^(-pc[1])
    jac[7] = v[3] * v[6]^(-1 + pc[1]) * v[7]^(1 - pc[1]) + pc[1] * v[3] * log(v[6]) * v[6]^(-1 + pc[1]) * v[7]^(1 - pc[1]) - pc[1] * v[3] * log(v[7]) * v[6]^(-1 + pc[1]) * v[7]^(1 - pc[1])
    jac[8] = -1 + pf[5] * v[3]^-1 * exp(pf[5] * log(v[3]))
    jac[9] = (1 - pc[1]) * v[6]^pc[1] * v[7]^(-pc[1])
    jac[10] = pc[1] * v[3] * (1 - pc[1]) * v[6]^(-1 + pc[1]) * v[7]^(-pc[1])
    jac[11] = -pc[1] * v[3] * (1 - pc[1]) * v[6]^pc[1] * v[7]^(-1 - pc[1])
    jac[12] = -1
    jac[13] = -v[3] * v[6]^pc[1] * v[7]^(-pc[1]) + v[3] * log(v[6]) * (1 - pc[1]) * v[6]^pc[1] * v[7]^(-pc[1]) - v[3] * log(v[7]) * (1 - pc[1]) * v[6]^pc[1] * v[7]^(-pc[1])
    jac[14] = v[6]^pc[1] * v[7]^(1 - pc[1])
    jac[15] = pc[1] * v[3] * v[6]^(-1 + pc[1]) * v[7]^(1 - pc[1])
    jac[16] = v[3] * (1 - pc[1]) * v[6]^pc[1] * v[7]^(-pc[1])
    jac[17] = -1
    jac[18] = v[3] * log(v[6]) * v[6]^pc[1] * v[7]^(1 - pc[1]) - v[3] * log(v[7]) * v[6]^pc[1] * v[7]^(1 - pc[1])
    jac[19] = pf[1] * pf[4] * v[4]^(-1 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3])
    jac[20] = pf[1] * (-pf[3] * pf[4]^2 * (v[2] - pf[6] * (-pf[2] + v[5] * v[6]^-1)^2 + 2 * pf[6] * v[5] * v[6]^-1 * (-pf[2] + v[5] * v[6]^-1)) * (v[4]^(-1 + pf[4]))^2 * ((1 - v[7])^(1 - pf[4]))^2 * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-1 - pf[3]) + pf[4] * (-1 + pf[4]) * (v[2] - pf[6] * (-pf[2] + v[5] * v[6]^-1)^2 + 2 * pf[6] * v[5] * v[6]^-1 * (-pf[2] + v[5] * v[6]^-1)) * v[4]^(-2 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]) + pf[3] * pf[4]^2 * (-1 - 2 * pf[6] * (-pf[2] + v[5] * v[6]^-1)) * (1 - pf[2]) * (v[4]^(-1 + pf[4]))^2 * ((1 - v[7])^(1 - pf[4]))^2 * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-1 - pf[3]) - pf[4] * (-1 + pf[4]) * (-1 - 2 * pf[6] * (-pf[2] + v[5] * v[6]^-1)) * (1 - pf[2]) * v[4]^(-2 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3])) - pf[3] * pf[4]^2 * (-1 - 2 * pf[6] * (-pf[2] + v[5] * v[6]^-1)) * (v[4]^(-1 + pf[4]))^2 * ((1 - v[7])^(1 - pf[4]))^2 * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-1 - pf[3]) + pf[4] * (-1 + pf[4]) * (-1 - 2 * pf[6] * (-pf[2] + v[5] * v[6]^-1)) * v[4]^(-2 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3])
    jac[21] = pf[1] * (2 * pf[4] * pf[6] * v[5] * v[6]^-2 * v[4]^(-1 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]) + 2 * pf[4] * pf[6] * v[6]^-1 * (1 - pf[2]) * v[4]^(-1 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3])) - 2 * pf[4] * pf[6] * v[6]^-1 * v[4]^(-1 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3])
    jac[22] = pf[1] * (-2 * pf[4] * pf[6] * v[5]^2 * v[6]^-3 * v[4]^(-1 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]) - 2 * pf[4] * pf[6] * v[5] * v[6]^-2 * (1 - pf[2]) * v[4]^(-1 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3])) + 2 * pf[4] * pf[6] * v[5] * v[6]^-2 * v[4]^(-1 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3])
    jac[23] = pf[1] * (pf[4] * (-1 + pf[4]) * (v[2] - pf[6] * (-pf[2] + v[5] * v[6]^-1)^2 + 2 * pf[6] * v[5] * v[6]^-1 * (-pf[2] + v[5] * v[6]^-1)) * v[4]^(-1 + pf[4]) * (1 - v[7])^(-pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]) - pf[4] * (-1 + pf[4]) * (-1 - 2 * pf[6] * (-pf[2] + v[5] * v[6]^-1)) * (1 - pf[2]) * v[4]^(-1 + pf[4]) * (1 - v[7])^(-pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]) - pf[3] * pf[4] * (-1 + pf[4]) * (v[2] - pf[6] * (-pf[2] + v[5] * v[6]^-1)^2 + 2 * pf[6] * v[5] * v[6]^-1 * (-pf[2] + v[5] * v[6]^-1)) * v[4]^(-1 + 2 * pf[4]) * (1 - v[7])^(-pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-1 - pf[3]) + pf[3] * pf[4] * (-1 + pf[4]) * (-1 - 2 * pf[6] * (-pf[2] + v[5] * v[6]^-1)) * (1 - pf[2]) * v[4]^(-1 + 2 * pf[4]) * (1 - v[7])^(-pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-1 - pf[3])) + pf[4] * (-1 + pf[4]) * (-1 - 2 * pf[6] * (-pf[2] + v[5] * v[6]^-1)) * v[4]^(-1 + pf[4]) * (1 - v[7])^(-pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]) - pf[3] * pf[4] * (-1 + pf[4]) * (-1 - 2 * pf[6] * (-pf[2] + v[5] * v[6]^-1)) * v[4]^(-1 + 2 * pf[4]) * (1 - v[7])^(-pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-1 - pf[3])
    jac[24] = pf[4] * (-1 + pf[4]) * v[4]^(-1 + pf[4]) * (1 - v[7])^(-pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]) - pf[3] * pf[4]^2 * v[10] * (v[4]^(-1 + pf[4]))^2 * ((1 - v[7])^(1 - pf[4]))^2 * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-1 - pf[3]) + pf[4] * v[10] * (-1 + pf[4]) * v[4]^(-2 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]) - pf[3] * pf[4] * (-1 + pf[4]) * v[4]^(-1 + 2 * pf[4]) * (1 - v[7])^(-pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-1 - pf[3])
    jac[25] = -pf[3] * (-1 + pf[4])^2 * (v[4]^pf[4])^2 * ((1 - v[7])^(-pf[4]))^2 * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-1 - pf[3]) + pf[4] * (-1 + pf[4]) * v[4]^pf[4] * (1 - v[7])^(-1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]) + pf[4] * v[10] * (-1 + pf[4]) * v[4]^(-1 + pf[4]) * (1 - v[7])^(-pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]) - pf[3] * pf[4] * v[10] * (-1 + pf[4]) * v[4]^(-1 + 2 * pf[4]) * (1 - v[7])^(-pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-1 - pf[3])
    jac[26] = pf[4] * v[4]^(-1 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3])
    jac[27] = 1
    jac[28] = -pf[2]
    jac[29] = -pf[4] * v[4]^(-1 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3])
    jac[30] = -(-1 + pf[4]) * v[4]^pf[4] * (1 - v[7])^(-pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3])
    jac[31] = 1 - pf[1]
    jac[32] = -1
    jac[33] = -v[6]
    jac[34] = -v[2]
    jac[35] = -v[10]
    jac[36] = -v[7]
    jac[37] = 1
    jac[38] = 1
    jac[39] = v[6]
    jac[40] = -1
    jac[41] = -1 - 2 * pf[6] * (-pf[2] + v[5] * v[6]^-1)
    jac[42] = v[2] - pf[6] * (-pf[2] + v[5] * v[6]^-1)^2 + 2 * pf[6] * v[5] * v[6]^-1 * (-pf[2] + v[5] * v[6]^-1)
    jac[43] = v[10]
    jac[44] = v[7]
    jac[45] = v[6]
    jac[46] = v[2]
    jac[47] = -0.36
    jacob <- sparseMatrix(i = c(1, 1, 2, 2, 2, 2, 2, 3, 4, 4,
                                4, 4, 4, 5, 5, 5, 5, 5, 6, 6,
                                6, 6, 6, 7, 7, 7, 8, 8, 9, 9,
                                9, 10, 10, 10, 10, 10, 10, 11, 11, 11,
                                11, 11, 11, 11, 12, 12, 12),
                          j = c(1, 8, 2, 3, 6, 7, 12, 3, 3, 6,
                                7, 10, 12, 3, 6, 7, 11, 12, 2, 4,
                                5, 6, 7, 4, 7, 10, 5, 6, 4, 7,
                                9, 1, 2, 6, 7, 10, 11, 1, 2, 4,
                                5, 6, 7, 10, 2, 6, 11),
                          x = jac, dims = c(12, 12))

    return(jacob)
}

# 1st order perturbation
pert1__ <- function(v, pc, pf)
{
    Atm1x <- numeric(8)
    Atm1x[1] = pc[1] * v[3] * (-1 + pc[1]) * v[6]^(-2 + pc[1]) * v[7]^(1 - pc[1])
    Atm1x[2] = pf[5] * v[3]^-1 * exp(pf[5] * log(v[3]))
    Atm1x[3] = pc[1] * v[3] * (1 - pc[1]) * v[6]^(-1 + pc[1]) * v[7]^(-pc[1])
    Atm1x[4] = pc[1] * v[3] * v[6]^(-1 + pc[1]) * v[7]^(1 - pc[1])
    Atm1x[5] = 2 * pf[4] * pf[6] * v[5] * v[6]^-2 * v[4]^(-1 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3])
    Atm1x[6] = 1 - pf[2]
    Atm1x[7] = -v[2]
    Atm1x[8] = v[2] - pf[6] * (-pf[2] + v[5] * v[6]^-1)^2 + 2 * pf[6] * v[5] * v[6]^-1 * (-pf[2] + v[5] * v[6]^-1)
    Atm1 <- sparseMatrix(i = c(2, 3, 4, 5, 6, 8, 10, 11),
                         j = c(6, 3, 6, 6, 6, 6, 6, 6),
                         x = Atm1x, dims = c(11, 11))

    Atx <- numeric(35)
    Atx[1] = -1
    Atx[2] = 1
    Atx[3] = -1
    Atx[4] = pc[1] * v[6]^(-1 + pc[1]) * v[7]^(1 - pc[1])
    Atx[5] = pc[1] * v[3] * (1 - pc[1]) * v[6]^(-1 + pc[1]) * v[7]^(-pc[1])
    Atx[6] = -1
    Atx[7] = (1 - pc[1]) * v[6]^pc[1] * v[7]^(-pc[1])
    Atx[8] = -pc[1] * v[3] * (1 - pc[1]) * v[6]^pc[1] * v[7]^(-1 - pc[1])
    Atx[9] = -1
    Atx[10] = v[6]^pc[1] * v[7]^(1 - pc[1])
    Atx[11] = v[3] * (1 - pc[1]) * v[6]^pc[1] * v[7]^(-pc[1])
    Atx[12] = -1
    Atx[13] = pf[4] * (-1 + pf[4]) * (-1 - 2 * pf[6] * (-pf[2] + v[5] * v[6]^-1)) * v[4]^(-2 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]) - pf[3] * pf[4]^2 * (-1 - 2 * pf[6] * (-pf[2] + v[5] * v[6]^-1)) * v[4]^(-2 + 2 * pf[4]) * (1 - v[7])^(2 - 2 * pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-1 - pf[3])
    Atx[14] = -2 * pf[4] * pf[6] * v[6]^-1 * v[4]^(-1 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3])
    Atx[15] = pf[1] * (-2 * pf[4] * pf[6] * v[5]^2 * v[6]^-3 * v[4]^(-1 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]) - 2 * pf[4] * pf[6] * v[5] * v[6]^-2 * (1 - pf[2]) * v[4]^(-1 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]))
    Atx[16] = pf[4] * (-1 + pf[4]) * (-1 - 2 * pf[6] * (-pf[2] + v[5] * v[6]^-1)) * v[4]^(-1 + pf[4]) * (1 - v[7])^(-pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]) - pf[3] * pf[4] * (-1 + pf[4]) * (-1 - 2 * pf[6] * (-pf[2] + v[5] * v[6]^-1)) * v[4]^(-1 + 2 * pf[4]) * (1 - v[7])^(1 - 2 * pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-1 - pf[3])
    Atx[17] = pf[4] * (-1 + pf[4]) * v[4]^(-1 + pf[4]) * (1 - v[7])^(-pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]) - pf[3] * pf[4] * (-1 + pf[4]) * v[4]^(-1 + 2 * pf[4]) * (1 - v[7])^(1 - 2 * pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-1 - pf[3]) - pf[3] * pf[4]^2 * v[10] * v[4]^(-2 + 2 * pf[4]) * (1 - v[7])^(2 - 2 * pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-1 - pf[3]) + pf[4] * v[10] * (-1 + pf[4]) * v[4]^(-2 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3])
    Atx[18] = -pf[3] * (-1 + pf[4])^2 * v[4]^(2 * pf[4]) * (1 - v[7])^(-2 * pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-1 - pf[3]) + pf[4] * (-1 + pf[4]) * v[4]^pf[4] * (1 - v[7])^(-1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]) + pf[4] * v[10] * (-1 + pf[4]) * v[4]^(-1 + pf[4]) * (1 - v[7])^(-pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]) - pf[3] * pf[4] * v[10] * (-1 + pf[4]) * v[4]^(-1 + 2 * pf[4]) * (1 - v[7])^(1 - 2 * pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-1 - pf[3])
    Atx[19] = pf[4] * v[4]^(-1 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3])
    Atx[20] = 1
    Atx[21] = -1
    Atx[22] = -pf[4] * v[4]^(-1 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3])
    Atx[23] = (1 - pf[4]) * v[4]^pf[4] * (1 - v[7])^(-pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3])
    Atx[24] = 1
    Atx[25] = -1
    Atx[26] = -v[6]
    Atx[27] = -v[10]
    Atx[28] = -v[7]
    Atx[29] = 1
    Atx[30] = 1
    Atx[31] = v[6]
    Atx[32] = -1
    Atx[33] = -1 - 2 * pf[6] * (-pf[2] + v[5] * v[6]^-1)
    Atx[34] = v[10]
    Atx[35] = v[7]
    At <- sparseMatrix(i = c(1, 1, 2, 2, 2, 3, 4, 4, 4, 5,
                             5, 5, 6, 6, 6, 6, 7, 7, 7, 8,
                             8, 9, 9, 9, 10, 10, 10, 10, 10, 11,
                             11, 11, 11, 11, 11),
                       j = c(1, 8, 2, 3, 7, 3, 3, 7, 10, 3,
                             7, 11, 4, 5, 6, 7, 4, 7, 10, 5,
                             6, 4, 7, 9, 1, 2, 7, 10, 11, 1,
                             2, 4, 5, 7, 10),
                         x = Atx, dims = c(11, 11))

    Atp1x <- numeric(5)
    Atp1x[1] = pf[1] * pf[4] * v[4]^(-1 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3])
    Atp1x[2] = pf[1] * (pf[4] * ((-1 + pf[4]) * (v[2] - pf[6] * (-pf[2] + v[5] * v[6]^-1)^2 + 2 * pf[6] * v[5] * v[6]^-1 * (-pf[2] + v[5] * v[6]^-1)) * v[4]^(-2 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]) - pf[3] * pf[4] * (v[2] - pf[6] * (-pf[2] + v[5] * v[6]^-1)^2 + 2 * pf[6] * v[5] * v[6]^-1 * (-pf[2] + v[5] * v[6]^-1)) * v[4]^(-2 + 2 * pf[4]) * (1 - v[7])^(2 - 2 * pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-1 - pf[3])) - pf[4] * (1 - pf[2]) * ((-1 + pf[4]) * (-1 - 2 * pf[6] * (-pf[2] + v[5] * v[6]^-1)) * v[4]^(-2 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]) - pf[3] * pf[4] * (-1 - 2 * pf[6] * (-pf[2] + v[5] * v[6]^-1)) * v[4]^(-2 + 2 * pf[4]) * (1 - v[7])^(2 - 2 * pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-1 - pf[3])))
    Atp1x[3] = pf[1] * (2 * pf[4] * pf[6] * v[5] * v[6]^-2 * v[4]^(-1 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]) + 2 * pf[4] * pf[6] * v[6]^-1 * (1 - pf[2]) * v[4]^(-1 + pf[4]) * (1 - v[7])^(1 - pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]))
    Atp1x[4] = pf[1] * (pf[4] * ((-1 + pf[4]) * (v[2] - pf[6] * (-pf[2] + v[5] * v[6]^-1)^2 + 2 * pf[6] * v[5] * v[6]^-1 * (-pf[2] + v[5] * v[6]^-1)) * v[4]^(-1 + pf[4]) * (1 - v[7])^(-pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]) - pf[3] * (-1 + pf[4]) * (v[2] - pf[6] * (-pf[2] + v[5] * v[6]^-1)^2 + 2 * pf[6] * v[5] * v[6]^-1 * (-pf[2] + v[5] * v[6]^-1)) * v[4]^(-1 + 2 * pf[4]) * (1 - v[7])^(1 - 2 * pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-1 - pf[3])) - pf[4] * (1 - pf[2]) * ((-1 + pf[4]) * (-1 - 2 * pf[6] * (-pf[2] + v[5] * v[6]^-1)) * v[4]^(-1 + pf[4]) * (1 - v[7])^(-pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-pf[3]) - pf[3] * (-1 + pf[4]) * (-1 - 2 * pf[6] * (-pf[2] + v[5] * v[6]^-1)) * v[4]^(-1 + 2 * pf[4]) * (1 - v[7])^(1 - 2 * pf[4]) * (v[4]^pf[4] * (1 - v[7])^(1 - pf[4]))^(-1 - pf[3])))
    Atp1x[5] = -pf[1]
    Atp1 <- sparseMatrix(i = c(6, 6, 6, 6, 9),
                         j = c(2, 4, 5, 7, 9),
                         x = Atp1x, dims = c(11, 11))

    Aepsx <- numeric(1)
    Aepsx[1] = exp(pf[5] * log(v[3]))
    Aeps <- sparseMatrix(i = c(3),
                         j = c(1),
                         x = Aepsx, dims = c(11, 1))

    return(list(Atm1, At, Atp1, Aeps))
}

ext__ <- list()

# create model object
gecon_model(model_info = info__,
            index_sets = index_sets__,
            variables = variables__,
            variables_tex = variables_tex__,
            shocks = shocks__,
            shocks_tex = shocks_tex__,
            parameters = parameters__,
            parameters_tex = parameters_tex__,
            parameters_free = parameters_free__,
            parameters_free_val = parameters_free_val__,
            equations = equations__,
            calibr_equations = calibr_equations__,
            var_eq_map = vareqmap__,
            shock_eq_map = shockeqmap__,
            var_ceq_map = varcalibreqmap__,
            cpar_eq_map = calibrpareqmap__,
            cpar_ceq_map = calibrparcalibreqmap__,
            fpar_eq_map = freepareqmap__,
            fpar_ceq_map = freeparcalibreqmap__,
            ss_function = ss_eq__,
            calibr_function = calibr_eq__,
            ss_calibr_jac_function = ss_calibr_eq_jacob__,
            pert = pert1__,
            ext = ext__)
