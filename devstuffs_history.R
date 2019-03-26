# Hide this file from build
usethis::use_build_ignore("devstuffs_history.R")

# DESCRIPTION
library(desc)
# Create and clean desc
my_desc <- description$new("DESCRIPTION")
# Set your package name
my_desc$set("Package", "refele")
#Set your name
my_desc$set("Authors@R", "person('Benjamin', 'Louis', email = 'contact@benjaminlouis-stat.fr', role = c('aut', 'cre'))")
# Remove some author fields
my_desc$del("Maintainer")
# Set the version
my_desc$set_version("0.0.0.9000")
# The title of your package
my_desc$set(Title = "refele : a package for the EFELE project")
# The description of your package
my_desc$set(Description = "Several functions to import, tidy and model data from the EFELE project.")
# The urls
my_desc$set("URL", "https://github.com/BenjaminLouis/refele")
my_desc$set("BugReports", "https://github.com/BenjaminLouis/refele/issues")
# Depends
my_desc$set(Depends = "R (>= 3.5.0)")
# Save everyting
my_desc$write(file = "DESCRIPTION")

# Licence
usethis::use_mit_license(name = "Benjamin Louis")

# README + badges and CoC
usethis::use_readme_md()
usethis::use_code_of_conduct()
usethis::use_lifecycle_badge("Experimental")

# Add data
usethis::use_data_raw()

# For tests
usethis::use_testthat()
usethis::use_test("summarise_daily")

# Codecov
usethis::use_travis()
usethis::use_appveyor()
usethis::use_coverage()

# Vignette
usethis::use_vignette("refele")
#devtools::build_vignettes()

# Reorder your DESC
attachment::att_to_description()
usethis::use_tidy_description()



