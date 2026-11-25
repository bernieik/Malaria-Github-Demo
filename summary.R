
malaria <- read.csv("data/synthetic_malaria_data.csv")

colnames(malaria)
View(malaria)
malaria$fever_category <- cut(
  malaria$fever_c,
  breaks = c(-Inf, 38.0, 39.0, Inf),
  labels = c("Low", "Moderate", "High"),
  right = FALSE
  )

# Adds a derived fever_category column to the synthetic malaria dataset.
# Run from the project root: source("R/add_fever_category.R")

malaria <- read.csv("data/synthetic_malaria_data.csv")

malaria$fever_category <- cut(
  malaria$fever_c,
  breaks = c(-Inf, 38.0, 39.0, Inf),
  labels = c("Low", "Moderate", "High"),
  right  = FALSE
)

write.csv(malaria, "data/synthetic_malaria_data.csv", row.names = FALSE)

cat("Rows:", nrow(malaria), "\n")
print(table(malaria$fever_category))

source("R/add_fever_category.R")

tmp <- "data/synthetic_malaria_data.csv.tmp"
write.csv(malaria, tmp, row.names = FALSE)
file.rename("data/synthetic_malaria_data.csv", "data/synthetic_malaria_data.csv.bak")
file.rename(tmp, "data/synthetic_malaria_data.csv")
file.remove("data/synthetic_malaria_data.csv.bak")




malaria <- read.csv("data/synthetic_malaria_data.csv")
cat("Total cases:", nrow(malaria), "\n")
cat("RDT positive:", sum(malaria$rapid_test == "Positive"))
print(table(malaria$district))
