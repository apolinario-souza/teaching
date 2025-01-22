rm(list = ls())
# Carregar o pacote mediation
library(mediation)
library(readODS)

dados = read_ods("dados.ods", sheet = 4)



# Realizar a análise de mediação
resultado_medicao <- mediate(
  model.m = lm(N_back ~ Grupos, data = dados),  # Modelo para o mediador
  model.y = lm(MNP_retirada ~ Grupos + N_back, data = dados), # Modelo para o resultado
  sims = 1000,                              # Número de simulações Monte Carlo
  treat = "Grupos",                          # Nome da variável de tratamento
  mediator = "N_back"                          # Nome da variável mediadora
)

# Visualizar os resultados
summary(resultado_medicao)
