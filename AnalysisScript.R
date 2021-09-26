#LEITURA DE DADOS
enade_data <- read.csv("C:/Users/Nicole/Documents/Econometria/Report1/microdados_enade_2018 - Copia.csv", sep=";")

# FILTRAGEM DE COLUNAS RELEVANTES E ÁREA RELEVANTE (CIÊNCIAS ECONÔMICAS)
filtered_columns_data <- enade_data[, c('CO_GRUPO', 'CO_TURNO_GRADUACAO', 'NT_GER')]
filtered_course_data <- filtered_columns_data[filtered_columns_data$CO_GRUPO == 13,]
filtered_course_data

filtered_grades_data <- filtered_course_data[!is.na(filtered_course_data$NT_GER),]
filtered_grades_data

#CÁLCULO DA MÉDIA TOTAL
grades <- filtered_grades_data$NT_GER
grades
grades <- gsub(",",".",grades)
grades
grades <- as.numeric(grades)
grades
grades_mean <- mean(grades)
grades_mean
grades_var <- sd(grades)
grades_var


#CÁLCULO DA MÉDIA POR TURNO
filtered_day_shift_data <- filtered_grades_data[filtered_grades_data$CO_TURNO_GRADUACAO == 1,]
day_grades <- filtered_day_shift_data$NT_GER
day_grades
day_grades <- gsub(",",".",day_grades)
day_grades
day_grades <- as.numeric(day_grades)
day_grades_mean <- mean(day_grades)
day_grades_mean
day_grades_sd <- sd(day_grades)
day_grades_sd


filtered_night_shift_data <- filtered_grades_data[filtered_grades_data$CO_TURNO_GRADUACAO == 4,]
night_grades <- filtered_night_shift_data$NT_GER
night_grades
night_grades <- gsub(",",".",night_grades)
night_grades
night_grades <- as.numeric(night_grades)
night_grades_mean <- mean(night_grades)
night_grades_mean
night_grades_sd <- sd(night_grades)
night_grades_sd
