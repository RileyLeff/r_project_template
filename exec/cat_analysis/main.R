# execute this file to run this specific portion of the program

# add utilities to environment
source("exec/cat_analysis/util.R")

# add constants to the environment
constants <- RcppTOML::parseTOML("data/cats/constants.toml")

# read the data
df <- read.csv("data/cats/raw/cats.csv")

# do the hard-hitting analysis that this world needs
df$human_age <- get_cat_age_in_human_years(
  df$age,
  constants$cat_years_per_people_years
)
