install.packages("here")
library(here, gtsummary)

pokemon <- read.csv(here::here("Data/Pokemon.csv"))

#Creating table of descriptive statistics
tbl_summary(
						pokemon,
						by = "Type.1",
						include = c(HP, Attack, Defense, Sp..Atk, Sp..Def, Speed),
						label = list(
												 HP = "Health Points",
												 Sp..Atk = "Special Attack",
												 Sp..Def = "Special Defense")
						)

#Creating regression table of HP by Attack, Defense, Special Attack, Special Defense, and speed
tbl_uvregression(
								 pokemon,
								 y = HP,
								 include = c(HP, Attack, Defense, Sp..Atk, Sp..Def, Speed),
								 label = list(
														 	HP = "Health Points",
														 	Sp..Atk = "Special Attack",
														 	Sp..Def = "Special Defense"),
								 method = lm
								 )

#Creating a histogram for HP of all Pokemon in the dataset
hist(pokemon$HP)

#Creating function to return mean value for continuous variables
variable_mean <- function(x){
							val = sum(x)/length(x)
							return(val)
							}
variable_mean(pokemon$Attack)

