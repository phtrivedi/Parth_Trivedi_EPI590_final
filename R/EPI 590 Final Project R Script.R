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

#Creating regression table
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

#Creating a histogram
hist(pokemon$HP)

