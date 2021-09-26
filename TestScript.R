test_data <- read.csv("teste_dados_falsos3.csv")
test_data

test_data <- test_data[, c('Nota', 'Curso', 'Turno')]
test_data


economics_test_data <- test_data[test_data$Curso == 13,]
economics_test_data